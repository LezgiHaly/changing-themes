import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/core/app_assets.dart';

// Widget фото профиля

class PhotoProfil extends StatelessWidget {
  const PhotoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(AppAssets.imProfile),
    );
  }
}
