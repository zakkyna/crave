part of 'theme.dart';

class Styles {
  Styles._();

  static TextStyle appBarTitleStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle buttonLabelStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle inputStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputHintStyle = TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.inputHintColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputErrorStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.red,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle linkStyle = TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.mainColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inputLabelStyle = TextStyle(
    fontFamily: 'Kefa',
    color: AppColors.mainColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle normalStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
  );

  static TextStyle smallStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle mediumStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bottomNavTextStyle = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
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

  static TextStyle kefa11Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa11Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa11Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa11SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa11Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa12Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa12Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa12Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa12SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa12Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa13Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa13Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa13Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa13SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa13Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa14Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa14Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa14Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa14SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa14Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa15Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa15Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa15Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa15SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa15Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa16Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa16Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa16Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa16SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa16Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa18Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa18Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa18Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa18SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa18Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa20Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa20Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa20Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa20SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa20Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa22Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa22Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa22Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa22SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa22Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kefa24Light = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle kefa24Regular = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kefa24Medium = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kefa24SemiBold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kefa24Bold = TextStyle(
    fontFamily: 'Kefa',
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle sfProDisplay = TextStyle(
    fontFamily: 'SF Pro',
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
}
