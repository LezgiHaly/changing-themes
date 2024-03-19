import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/core/app_assets.dart';

// Widget наград

class Medals extends StatelessWidget {
  const Medals({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.goldMedal),
        const SizedBox(
          width: 16,
        ),
        Image.asset(AppAssets.goldMedal),
        const SizedBox(
          width: 16,
        ),
        Image.asset(AppAssets.bronzeMedal),
        const SizedBox(
          width: 16,
        ),
        Image.asset(AppAssets.silverMedal),
        const SizedBox(
          width: 16,
        ),
        Image.asset(AppAssets.bronzeMedal),
      ],
    );
  }
}
