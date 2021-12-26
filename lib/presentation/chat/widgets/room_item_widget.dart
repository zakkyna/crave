import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RoomItemWidget extends StatelessWidget {
  const RoomItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routers.chatRoom);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          children: [
            Badge(
              position: BadgePosition.bottomEnd(
                bottom: 1,
                end: 0,
              ),
              padding: EdgeInsets.all(7.r),
              badgeColor: Colors.green,
              child: CircleAvatar(
                radius: 24.r,
                backgroundImage: const CachedNetworkImageProvider(
                    'https://randomuser.me/api/portraits/'),
              ),
            ),
            addHorizontalSpace(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi handsome!',
                    style: Styles.sfProDisplay.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    'Yeah! you look handsome!',
                    style: Styles.sfProDisplay.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 24.r,
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  CircularProgressIndicator(
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation(AppColors.mainColor),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text('24'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
