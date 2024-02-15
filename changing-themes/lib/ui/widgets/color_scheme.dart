import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_flutter_courses_template/core/app_assets.dart';
import 'package:surf_flutter_courses_template/core/app_string.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';
import 'package:surf_flutter_courses_template/themes/theme.dart';

// Widget кнопок с цветовыми схемами

class ShemesPanel extends StatefulWidget {
  const ShemesPanel({
    super.key,
    this.onSelectScheme,
    required this.selectedIndex,
    required this.themeExts,
  });

  final void Function(Iterable<ThemeExtension<Object?>> scheme)? onSelectScheme;

  final int selectedIndex;

  final List<Iterable<ThemeExtension<Object?>>> themeExts;

  @override
  State<ShemesPanel> createState() => _ShemesPanelState();
}

class _ShemesPanelState extends State<ShemesPanel> {
  late int selectedIndex = widget.selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.colorScheme,
            style: context.text.modalBottonColorScheme,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Схема 1

              GestureDetector(
                onTap: () {
                  widget.onSelectScheme?.call(widget.themeExts.first);
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: SizedBox(
                  width: 103,
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: selectedIndex == 0
                            ? AppColors.green
                            : Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppAssets.icColor1),
                          Text(
                            AppString.scheme1,
                            style: selectedIndex == 0
                                ? context.text.schemeSelected
                                : context.text.schemeUnSelected,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Схема 2

              GestureDetector(
                onTap: () {
                  widget.onSelectScheme?.call(widget.themeExts[1]);
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: SizedBox(
                  width: 103,
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: selectedIndex == 1
                            ? AppColors.lightBlue1
                            : Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppAssets.icColor2),
                          Text(
                            AppString.scheme2,
                            style: selectedIndex == 1
                                ? context.text.schemeSelected
                                : context.text.schemeUnSelected,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Схема 3

              GestureDetector(
                onTap: () {
                  widget.onSelectScheme?.call(widget.themeExts[2]);
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: SizedBox(
                  width: 103,
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: selectedIndex == 2
                            ? AppColors.brown
                            : Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppAssets.icColor3),
                          Text(
                            AppString.scheme3,
                            style: selectedIndex == 2
                                ? context.text.schemeSelected
                                : context.text.schemeUnSelected,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
