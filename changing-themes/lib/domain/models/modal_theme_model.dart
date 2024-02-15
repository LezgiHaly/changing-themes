import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_courses_template/core/app_string.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';
import 'package:surf_flutter_courses_template/themes/src/app_theme.dart';

import 'package:surf_flutter_courses_template/ui/widgets/button_done.dart';
import 'package:surf_flutter_courses_template/ui/widgets/color_scheme.dart';

// Модальное окно выбора темы


class ModalThemeMode extends StatefulWidget {
  const ModalThemeMode({super.key});

  @override
  State<ModalThemeMode> createState() => _ModalThemeModeState();
}

class _ModalThemeModeState extends State<ModalThemeMode> {
  late Iterable<ThemeExtension<Object?>> selectedLightThemeExt;

  late Iterable<ThemeExtension<Object?>> selectedLDarkThemeExt;

  late AppTheme? appTheme;

  @override
  void initState() {
    super.initState();
    appTheme = context.read<ThemeNotifier>().appTheme;

    selectedLightThemeExt = context.read<ThemeNotifier>().selectedLightScheme;

    selectedLDarkThemeExt = context.read<ThemeNotifier>().selectedDarkScheme;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              AppString.theme,
              style: context.text.modalBottonTitle,
            ),
          ),
          RadioListTile<AppTheme>(
              title: Text(
                AppString.systemTheme,
                style: context.text.modalBottonThemeNames,
              ),
              value: AppTheme.system,
              groupValue: appTheme,
              onChanged: (AppTheme? value) => setState(() {
                    appTheme = value;
                  })),
          RadioListTile<AppTheme>(
              title: Text(
                AppString.lightTheme,
                style: context.text.modalBottonThemeNames,
              ),
              value: AppTheme.light,
              groupValue: appTheme,
              onChanged: (AppTheme? value) => setState(() {
                    appTheme = value;
                  })),
          Visibility(
            visible: appTheme == AppTheme.light ? true : false,
            child: ShemesPanel(
              onSelectScheme: (scheme) =>
                  setState(() => selectedLightThemeExt = scheme),
              themeExts: ThemeNotifier.selectedListLightThemeExt,
              selectedIndex: ThemeNotifier.selectedListLightThemeExt
                  .indexOf(selectedLightThemeExt),
            ),
          ),
          RadioListTile<AppTheme>(
              title: Text(
                AppString.darkTheme,
                style: context.text.modalBottonThemeNames,
              ),
              value: AppTheme.dark,
              groupValue: appTheme,
              onChanged: (AppTheme? value) => setState(() {
                    appTheme = value;
                  })),
          Visibility(
            visible: appTheme == AppTheme.dark ? true : false,
            child: ShemesPanel(
              onSelectScheme: (scheme) =>
                  setState(() => selectedLDarkThemeExt = scheme),
              themeExts: ThemeNotifier.selectedListDarkThemeExt,
              selectedIndex: ThemeNotifier.selectedListDarkThemeExt
                  .indexOf(selectedLDarkThemeExt),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Consumer<ThemeNotifier>(
            builder: (BuildContext context, notifier, Widget? child) =>
                BottonDone(
              onTap: () {
                notifier.setTheme(appTheme ?? AppTheme.system);
                notifier.changeLightScheme(selectedLightThemeExt);
                notifier.changeDarkScheme(selectedLDarkThemeExt);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
