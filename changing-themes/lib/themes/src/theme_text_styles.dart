part of '../theme.dart';

// Extension для текста приложения

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle? appBarTitle;
  final TextStyle cardText;
  final TextStyle bottomCardText;
  final TextStyle modalBottonTitle;
  final TextStyle modalBottonThemeNames;
  final TextStyle modalBottonColorScheme;
  final TextStyle schemeSelected;
  final TextStyle schemeUnSelected;
  final TextStyle buttonDone;
  final TextStyle buttonLogOut;

  ThemeTextStyles({
    required this.appBarTitle,
    required this.cardText,
    required this.bottomCardText,
    required this.modalBottonTitle,
    required this.modalBottonThemeNames,
    required this.modalBottonColorScheme,
    required this.schemeSelected,
    required this.schemeUnSelected,
    required this.buttonDone,
    required this.buttonLogOut,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? cardText,
    TextStyle? bottomCardText,
    TextStyle? modalBottonTitle,
    TextStyle? modalBottonThemeNames,
    TextStyle? modalBottonColorScheme,
    TextStyle? schemeSelected,
    TextStyle? schemeUnSelected,
    TextStyle? buttonDone,
    TextStyle? buttonLogOut,
  }) {
    return ThemeTextStyles(
      appBarTitle: appBarTitle ?? this.appBarTitle,
      cardText: cardText ?? this.cardText,
      bottomCardText: bottomCardText ?? this.bottomCardText,
      modalBottonTitle: modalBottonTitle ?? this.modalBottonTitle,
      modalBottonThemeNames:
          modalBottonThemeNames ?? this.modalBottonThemeNames,
      modalBottonColorScheme:
          modalBottonColorScheme ?? this.modalBottonColorScheme,
      schemeSelected: schemeSelected ?? this.schemeSelected,
      schemeUnSelected: schemeUnSelected ?? this.schemeUnSelected,
      buttonDone: buttonDone ?? this.buttonDone,
      buttonLogOut: buttonLogOut ?? this.buttonLogOut,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t),
      cardText: TextStyle.lerp(cardText, other.cardText, t)!,
      bottomCardText: TextStyle.lerp(bottomCardText, other.bottomCardText, t)!,
      modalBottonTitle:
          TextStyle.lerp(modalBottonTitle, other.modalBottonTitle, t)!,
      modalBottonThemeNames: TextStyle.lerp(
          modalBottonThemeNames, other.modalBottonThemeNames, t)!,
      modalBottonColorScheme: TextStyle.lerp(
          modalBottonColorScheme, other.modalBottonColorScheme, t)!,
      schemeSelected: TextStyle.lerp(schemeSelected, other.schemeSelected, t)!,
      schemeUnSelected:
          TextStyle.lerp(schemeUnSelected, other.schemeUnSelected, t)!,
      buttonDone: TextStyle.lerp(buttonDone, other.buttonDone, t)!,
      buttonLogOut: TextStyle.lerp(buttonLogOut, other.buttonLogOut, t)!,
    );
  }

  static ThemeTextStyles light1 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.black),
    cardText: AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.black),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.black),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );
  static ThemeTextStyles light2 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.black),
    cardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.lightBlue),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.black),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.black),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );
  static ThemeTextStyles light3 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.black),
    cardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.lightBrown),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.black),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.black),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.black),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );

  static ThemeTextStyles dark1 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.white),
    cardText: AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.white),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.white),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );
  static ThemeTextStyles dark2 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.white),
    cardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.lightBlue),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.white),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.white),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );
  static ThemeTextStyles dark3 = ThemeTextStyles(
    appBarTitle: AppTypography.textText18Blood.copyWith(color: AppColors.white),
    cardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.lightBrown),
    bottomCardText:
        AppTypography.textText14Regular.copyWith(color: AppColors.white),
    modalBottonTitle:
        AppTypography.textText18Blood.copyWith(color: AppColors.white),
    modalBottonThemeNames:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    modalBottonColorScheme:
        AppTypography.textText14Regular.copyWith(color: AppColors.gray),
    schemeSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    schemeUnSelected:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightBlue),
    buttonDone:
        AppTypography.textText16Regular.copyWith(color: AppColors.white),
    buttonLogOut:
        AppTypography.textText16Regular.copyWith(color: AppColors.lightRed),
  );
}
