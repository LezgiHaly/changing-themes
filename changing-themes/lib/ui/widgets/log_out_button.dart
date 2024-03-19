import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';
import 'package:surf_flutter_courses_template/themes/theme.dart';
import '../../core/app_string.dart';


// Widget кноаки "выход"

class LogOutBotton extends StatelessWidget {
  const LogOutBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 333,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.lightRed),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              AppString.logOut,
              style: context.text.buttonLogOut,
            ),
          ),
        ),
      ),
    );
  }
}
