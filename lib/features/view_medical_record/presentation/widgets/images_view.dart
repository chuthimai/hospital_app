import 'package:flutter/material.dart';

import '../../domain/entities/image_study.dart';
import 'image_tile.dart';

class ImagesView extends StatelessWidget {
  final List<ImageStudy> imageStudies;

  const ImagesView(this.imageStudies, {super.key});

  @override
  Widget build(BuildContext context) {
    // Nếu >=2 ảnh thì grid 2 cột, ít hơn thì vừa khít
    int crossAxisCount = imageStudies.length >= 2
        ? 2
        : imageStudies.length;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: imageStudies.length,
      itemBuilder: (context, index) {
        final image = imageStudies[index];
        return ImageTile(image: image);
      },
    );
  }

}