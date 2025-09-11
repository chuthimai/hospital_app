import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'liquid_glass_lens_shader.dart';
import 'shader_painter.dart';

class GlassContainer extends StatefulWidget {
  const GlassContainer({
    super.key,
    this.width,
    this.height,
    this.constraints,
    this.padding,
    this.margin,
    this.alignment,
    this.decoration,
    this.foregroundDecoration,
    this.clipBehavior = Clip.none,
    this.child,
    this.shader,
    required this.backgroundKey, // nơi chứa toàn bộ background
    this.captureInterval = const Duration(milliseconds: 50),
  });

  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final Clip clipBehavior;
  final Widget? child;

  final LiquidGlassLensShader? shader;
  final GlobalKey backgroundKey;
  final Duration captureInterval;

  @override
  State<GlassContainer> createState() => _GlassContainerState();
}

class _GlassContainerState extends State<GlassContainer> {
  LiquidGlassLensShader? _shader;
  ui.Image? _capturedBackground;
  Timer? _timer;
  bool _isCapturing = false;

  @override
  void initState() {
    super.initState();
    _shader = widget.shader ?? LiquidGlassLensShader();
    _initializeShader();
    _startCaptureLoop();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _capturedBackground?.dispose();
    super.dispose();
  }

  Future<void> _initializeShader() async {
    await _shader?.initialize();
    if (mounted) setState(() {});
  }

  void _startCaptureLoop() {
    _timer = Timer.periodic(widget.captureInterval, (_) {
      if (mounted && !_isCapturing) {
        _captureBackground();
      }
    });
  }

  Future<void> _captureBackground() async {
    if (_isCapturing || !mounted) return;
    _isCapturing = true;

    try {
      final boundary =
      widget.backgroundKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
      final ourBox = context.findRenderObject() as RenderBox?;

      if (boundary == null || ourBox == null || !boundary.hasSize || !ourBox.hasSize) {
        return;
      }

      // tránh crash khi boundary chưa render xong
      if (boundary.debugNeedsPaint) {
        await Future.delayed(const Duration(milliseconds: 16));
        _isCapturing = false;
        return _captureBackground();
      }

      final boundaryBox = boundary as RenderBox;

      // Vị trí GlassContainer trong boundary
      final rectInBoundary = Rect.fromPoints(
        boundaryBox.globalToLocal(ourBox.localToGlobal(Offset.zero)),
        boundaryBox.globalToLocal(
          ourBox.localToGlobal(ourBox.size.bottomRight(Offset.zero)),
        ),
      );

      final boundaryRect = Offset.zero & boundaryBox.size;
      final regionToCapture = rectInBoundary.intersect(boundaryRect);

      if (regionToCapture.isEmpty) return;

      final pixelRatio = MediaQuery.of(context).devicePixelRatio;

      // Capture chính xác vùng glass
      final ui.Image croppedImage = await boundary.toImage(
        pixelRatio: pixelRatio,
      );

      if (mounted) {
        setState(() {
          _capturedBackground?.dispose();
          _capturedBackground = croppedImage;
        });
      } else {
        croppedImage.dispose();
      }
    } catch (e) {
      debugPrint("GlassContainer capture error: $e");
    } finally {
      _isCapturing = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    
    if (_shader != null &&
        _shader!.isLoaded &&
        _capturedBackground != null) {
      _shader!.updateShaderUniforms(
        width: widget.width ?? context.size?.width ?? 0,
        height: widget.height ?? context.size?.height ?? 0,
        backgroundImage: _capturedBackground,
      );

      content = CustomPaint(
        size: Size(
          widget.width ?? double.infinity,
          widget.height ?? double.infinity,
        ),
        painter: ShaderPainter(_shader!.shader),
        child: widget.child,
      );
    } else {
      content = widget.child ?? const SizedBox.shrink();
    }

    if (widget.padding != null) {
      content = Padding(padding: widget.padding!, child: content);
    }
    if (widget.alignment != null) {
      content = Align(alignment: widget.alignment!, child: content);
    }

    return Container(
      width: widget.width,
      height: widget.height,
      constraints: widget.constraints,
      margin: widget.margin,
      decoration: widget.decoration,
      foregroundDecoration: widget.foregroundDecoration,
      clipBehavior: widget.clipBehavior,
      child: content,
    );
  }
}
