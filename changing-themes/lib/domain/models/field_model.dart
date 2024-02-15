import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';

// Карточка поля данных


class FieldModel extends StatelessWidget {
  const FieldModel({
    super.key,
    required this.title,
    required this.subTitle,
    required this.button,
    this.onPressed,
  });

  final String title;

  final String subTitle;

  final bool button;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: context.color.cardBackground,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: context.text.cardText),
                  Text(
                    subTitle,
                    style: context.text.bottomCardText,
                  ),
                ],
              ),
              button
                  ? IconButton(
                      onPressed: onPressed,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: context.color.buttonsColor,
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
