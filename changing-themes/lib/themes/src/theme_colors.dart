part of '../theme.dart';

// Extension для цветов приложения

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color appBackgroundColor;
  final Color cardBackground;
  final Color buttonsColor;
  final Color buttonDoneColor;

  const ThemeColors({
    required this.appBackgroundColor,
    required this.buttonsColor,
    required this.cardBackground,
    required this.buttonDoneColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? buttonColor,
    Color? cardBackground,
    Color? buttonDoneColor,
    Color? appBackgroundColor,
  }) {
    return ThemeColors(
      cardBackground: cardBackground ?? this.cardBackground,
      buttonsColor: buttonColor ?? buttonsColor,
      buttonDoneColor: buttonDoneColor ?? this.buttonDoneColor,
      appBackgroundColor: appBackgroundColor ?? this.appBackgroundColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      buttonsColor: Color.lerp(buttonsColor, other.buttonsColor, t)!,
      buttonDoneColor: Color.lerp(buttonDoneColor, other.buttonDoneColor, t)!,
      appBackgroundColor:
          Color.lerp(appBackgroundColor, other.appBackgroundColor, t)!,
    );
  }

  static const light1 = ThemeColors(
    appBackgroundColor: AppColors.white,
    cardBackground: AppColors.white2,
    buttonsColor: AppColors.green,
    buttonDoneColor: AppColors.blue,
  );
  static const light2 = ThemeColors(
    appBackgroundColor: AppColors.whiteBlue,
    buttonsColor: AppColors.lightBlue1,
    cardBackground: AppColors.white,
    buttonDoneColor: AppColors.blue,
  );
  static const light3 = ThemeColors(
      appBackgroundColor: AppColors.whiteBrown,
      buttonsColor: AppColors.lightBrown,
      cardBackground: AppColors.white,
      buttonDoneColor: AppColors.brown);

  static const dark1 = ThemeColors(
      appBackgroundColor: AppColors.black,
      buttonsColor: AppColors.green,
      cardBackground: AppColors.lightBlack,
      buttonDoneColor: AppColors.blue);
  static const dark2 = ThemeColors(
      appBackgroundColor: AppColors.darkBlue,
      buttonsColor: AppColors.lightBlue1,
      cardBackground: AppColors.darkBlue1,
      buttonDoneColor: AppColors.blue);
  static const dark3 = ThemeColors(
      appBackgroundColor: AppColors.darkBrown,
      buttonsColor: AppColors.darkBrown,
      cardBackground: AppColors.lightBrown2,
      buttonDoneColor: AppColors.brown);
}
