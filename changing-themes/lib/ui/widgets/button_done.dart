import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/core/app_string.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';


// Widget кнопки "Готово"

class BottonDone extends StatelessWidget {
  const BottonDone({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 335,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.color.buttonDoneColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  AppString.done,
                  style: context.text.buttonDone,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
