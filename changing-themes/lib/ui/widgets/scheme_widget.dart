import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SchemeWidget extends StatelessWidget {
  final void Function()? onTap;

  final SvgPicture icon;

  final Color borderColor;

  final String title;

  final TextStyle textStyle;

  const SchemeWidget(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.borderColor,
      required this.title,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 103,
        height: 70,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: borderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon,
                Text(
                  title,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
