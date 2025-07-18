import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageViewerSmall {
  ImageViewerSmall(BuildContext context, String image, double size) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;

        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: Material(
              color: Colors.transparent,
              child: Container(
                height: screenHeight * size, // 50% de la altura de la pantalla
                width: screenWidth * size, // 50% del ancho de la pantalla
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: PhotoView(
                    imageProvider: AssetImage(image),
                    backgroundDecoration: const BoxDecoration(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
