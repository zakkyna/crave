part of 'theme.dart';

class Styles {
  Styles._();

  static TextStyle appBarTitleStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle buttonLabelStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle inputStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputHintStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.inputHintColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputErrorStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.red,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle linkStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.mainColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inputLabelStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.mainColor,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle normalStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
  );

  static TextStyle smallStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle mediumStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bottomNavTextStyle = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static ButtonStyle regularButton = ElevatedButton.styleFrom(
    onSurface: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    primary: AppColors.mainColor,
    alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
    ),
    elevation: 0,
  );
  static ButtonStyle orangeOutlinedButton = OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      ),
      side: const BorderSide(
        color: AppColors.orangeButton,
      ));

  static ButtonStyle buttonOutlined = OutlinedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
    fixedSize: const Size(150, 40),
    alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
    ),
    side: const BorderSide(
      color: Color(0xffd0d0d0),
    ),
  );

  static TextStyle kefa11Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa11Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa11Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa11SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa11Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa12Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa12Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa12Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa12SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa12Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa13Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa13Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa13Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa13SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa13Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa14Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa14Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa14Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa14SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa14Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa15Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa15Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa15Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa15SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa15Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa16Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa16Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa16Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa16SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa16Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa18Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa18Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa18Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa18SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa18Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa20Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa20Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa20Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa20SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa20Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa22Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa22Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa22Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa22SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa22Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa24Light = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa24Regular = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa24Medium = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa24SemiBold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa24Bold = const TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}
