import 'package:flutter/material.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/image_study.dart';

class ImageTile extends StatelessWidget {
  final ImageStudy image;

  const ImageTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showImageOverlay(context, image),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              image.endpoint,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
              const Center(child: Icon(Icons.broken_image, size: 40)),
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
            Positioned(
              bottom: 4,
              right: 6,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                child: Text(
                  image.receivedTime != null
                      ? DateFormatter.formatFull(image.receivedTime!)
                      : "",
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageOverlay(BuildContext context, ImageStudy image) {
    showGeneralDialog(
      context: context,
      barrierLabel: "ViewImage",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.3),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SafeArea(
            child: Stack(
              children: [
                Center(
                  child: InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 3.0,
                    child: Hero(
                      tag: "image-${image.id}",
                      child: Image.network(
                        image.endpoint,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) => const Icon(
                          Icons.broken_image,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: CurvedAnimation(parent: anim1, curve: Curves.easeOut),
          child: ScaleTransition(
            scale: Tween(begin: 0.95, end: 1.0)
                .animate(CurvedAnimation(parent: anim1, curve: Curves.easeOut)),
            child: child,
          ),
        );
      },
    );
  }
}