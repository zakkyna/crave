part of 'theme.dart';

class AppColors {
  AppColors._();
  static const mainColor = Color(0xFF8F0115);
  static const buttonDisabled = Color(0xFFE6B1B9);
  static const shadowColor = Color(0xFF000000);
  static const inputEnabledBorder = Color(0xFFD0D0D0);
  static const inputFocusedBorder = Color(0xFFF36E36);
  static const inputHintColor = Color(0xFFD0D0D0);
  static const dividerColor = Color(0xFFD0D0D0);
  static const landingBackground = Color(0xFFFFFFFF);
  static const greyBackground = Color(0xFFF0F0F0);

  static Map<int, Color> mainColorSwatch = {
    50: mainColor.withOpacity(.1),
    100: mainColor.withOpacity(.2),
    200: mainColor.withOpacity(.3),
    300: mainColor.withOpacity(.4),
    400: mainColor.withOpacity(.5),
    500: mainColor.withOpacity(.6),
    600: mainColor.withOpacity(.7),
    700: mainColor.withOpacity(.8),
    800: mainColor.withOpacity(.9),
    900: mainColor.withOpacity(1),
  };
  static MaterialColor mainMaterialColor =
      MaterialColor(mainColor.value, mainColorSwatch);
}
