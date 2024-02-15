import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/core/app_string.dart';
import 'package:surf_flutter_courses_template/domain/models/field_model.dart';
import 'package:surf_flutter_courses_template/domain/models/modal_theme_model.dart';
import 'package:surf_flutter_courses_template/themes/build_context_ext.dart';
import 'package:surf_flutter_courses_template/themes/src/app_theme.dart';
import 'package:surf_flutter_courses_template/ui/widgets/log_out_button.dart';
import 'package:surf_flutter_courses_template/ui/widgets/medals.dart';
import 'package:surf_flutter_courses_template/ui/widgets/my_app_bar.dart';
import 'package:provider/provider.dart';
import 'ui/widgets/profil_photo.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeNotifier())
    ], child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.lightTheme,
          darkTheme: themeNotifier.darkTheme,
          themeMode: themeNotifier.appTheme.toThemeMode(),
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.appBackgroundColor,
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PhotoProfil(),
              const SizedBox(height: 20),
              Text(
                AppString.myAwards,
                style: context.text.cardText,
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.only(left: 55.5),
                child: Medals(),
              ),
              const SizedBox(height: 32),
              const FieldModel(
                  title: AppString.name,
                  subTitle: AppString.names,
                  button: false),
              const SizedBox(height: 8),
              const FieldModel(
                  title: AppString.email,
                  subTitle: AppString.mail,
                  button: false),
              const SizedBox(height: 8),
              const FieldModel(
                  title: AppString.birthDate,
                  subTitle: AppString.dateBirth,
                  button: false),
              const SizedBox(height: 8),
              const FieldModel(
                  title: AppString.comand,
                  subTitle: AppString.comandName,
                  button: true),
              const SizedBox(height: 8),
              const FieldModel(
                  title: AppString.position,
                  subTitle: AppString.skip,
                  button: true),
              const SizedBox(height: 8),
              FieldModel(
                title: AppString.theme,
                subTitle: AppString.systemTheme,
                button: true,
                onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const SingleChildScrollView(
                      child: ModalThemeMode(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 60),
              const LogOutBotton(),
            ],
          ),
        ),
      ),
    );
  }
}
