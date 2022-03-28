import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/chat/chat_room_page.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RoomItemWidget extends StatelessWidget {
  final Profile currentProfile;
  final RoomModel roomModel;
  const RoomItemWidget(
      {Key? key, required this.currentProfile, required this.roomModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final room = roomModel.toTypes(currentProfile.uid);
    final expiredDiff = (24 -
        (DateTime.now().difference(roomModel.createdAt.toDate()).inHours));
    final expiredRemaining = expiredDiff < 0 ? 0 : expiredDiff;
    final indicatorRemaining = (expiredRemaining * 100 / 24) * 0.01;
    final colorRemaining = indicatorRemaining < 0.4
        ? Colors.red
        : expiredRemaining < 0.7
            ? Colors.orange
            : Colors.green;
    final isExpired = expiredRemaining <= 0;
    return InkWell(
      onTap:
          // isExpired
          //     ? null
          //     :
          () {
        Get.to(
          () => ChatRoomPage(
            roomModel: roomModel,
            currentProfile: currentProfile,
          ),
        );
      },
      child: Opacity(
        opacity: isExpired ? 0.5 : 1,
        child: Column(
          children: [
            AddVerticalSpace(10.h),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Row(
                children: [
                  Badge(
                    position: BadgePosition.topEnd(
                      top: -3,
                      end: -2,
                    ),
                    padding: EdgeInsets.zero,
                    badgeColor: Colors.white,
                    showBadge: !isExpired,
                    badgeContent: Stack(
                      children: [
                        SizedBox(
                          height: 24.h,
                          width: 24.h,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Text(
                              expiredRemaining.toString(),
                              style: Styles.sfProDisplay.copyWith(
                                fontSize: 11.sp,
                                color: colorRemaining,
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                          width: 24.h,
                          child: CircularProgressIndicator(
                            value: indicatorRemaining,
                            strokeWidth: 2,
                            color: colorRemaining,
                          ),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xFF7A008F), width: 2),
                      ),
                      padding: const EdgeInsets.all(3),
                      child: CircleAvatar(
                        radius: 24.r,
                        backgroundImage:
                            CachedNetworkImageProvider(room.imageUrl!),
                      ),
                    ),
                  ),
                  const AddHorizontalSpace(15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (roomModel.lastChat == null)
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor2.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(
                                    2.r,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                  vertical: 3.h,
                                ),
                                margin: EdgeInsets.only(
                                  bottom: 3.h,
                                  right: 3.w,
                                ),
                                child: Text(
                                  'New',
                                  style: Styles.sfProDisplay.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.mainColor2,
                                  ),
                                ),
                              ),
                            if (roomModel.isInstantChat == true)
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor2.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(
                                    2.r,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                  vertical: 3.h,
                                ),
                                margin: EdgeInsets.only(
                                  bottom: 3.h,
                                  left: 3.w,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Instant Chat',
                                      style: Styles.sfProDisplay.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.mainColor2,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/icon/instant_chat.svg',
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        // Text(
                        //   'Hi handsome!',
                        //   style: Styles.sfProDisplay.copyWith(
                        //     fontSize: 14.sp,
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                        // AddVerticalSpace(5),
                        if (!isExpired)
                          (roomModel.lastChat == null)
                              ? Text(
                                  'Send a Message',
                                  style: Styles.sfProDisplay.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.mainColor2,
                                  ),
                                )
                              : roomModel.lastChat!.type != 'text'
                                  ? const Icon(
                                      Icons.image,
                                      color: Colors.grey,
                                    )
                                  : Text(
                                      roomModel.lastChat!.text ?? '',
                                      style: Styles.sfProDisplay.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            roomModel.lastChat!.status == 'seen'
                                                ? Colors.grey
                                                : Colors.black,
                                      ),
                                    ),
                        if (isExpired)
                          Text(
                            'Room has been expired',
                            style: Styles.sfProDisplay.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainColor2,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      if (roomModel.lastChatAt != null)
                        Text(
                          DateFormat('hh:mm a')
                              .format(roomModel.lastChatAt!.toDate()),
                          style: Styles.sfProDisplay.copyWith(
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                      if (roomModel.lastChat != null)
                        Icon(
                          Icons.done_all,
                          color: roomModel.lastChat!.status == 'seen'
                              ? Colors.blue
                              : Colors.grey,
                          size: 16.sp,
                        ),
                    ],
                  )
                ],
              ),
            ),
            AddVerticalSpace(10.h),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.withOpacity(0.2),
              indent: 80.w,
            ),
          ],
        ),
      ),
    );
  }
}
