import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/chat/component/rooms.dart';
import 'package:crave_app/presentation/chat/widgets/room_item_widget.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          addVerticalSpace(Get.mediaQuery.padding.top + 10),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: SvgPicture.asset('assets/images/crave_logo.svg'),
            ),
          ),
          addVerticalSpace(20.h),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: Text(
              'who’s it gonna be?'.toUpperCase(),
              style: Styles.kefa24Regular,
            ),
          ),
          addVerticalSpace(10.h),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: Text(
              'Find a chemistry with one of them',
              style: Styles.kefa16Regular.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          addVerticalSpace(20.h),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                vertical: Dimens.defaultMargin,
              ),
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: Dimens.defaultMargin),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoomItemWidget(),
                      RoomItemWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
