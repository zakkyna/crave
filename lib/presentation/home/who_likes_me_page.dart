import 'package:crave_app/application/home/home_controller.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/home/widgets/who_likes_me_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhoLikesMePage extends GetView<HomeController> {
  final Profile currentProfile;
  const WhoLikesMePage(
    this.currentProfile, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<PostBloc>(context);
    controller.addWhoLikesMeListener((pageKey) {
      _bloc.add(PostEvent.getWhoLikesMePosts(pageKey));
    });

    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          getWhoLikesMeSuccess: (_state) {
            final items = _state.postSnapshot.posts;
            final isLastPage = _state.postSnapshot.hasReachedMax;
            if (isLastPage) {
              controller.whoLikesMePagingController.appendLastPage(items);
            } else {
              final nextPageKey = _state.postSnapshot.nextPage;
              controller.whoLikesMePagingController
                  .appendPage(items, nextPageKey);
            }
          },
        );
      },
      builder: (context, state) => RefreshIndicator(
        child: PagedListView<int, Post>(
          padding: EdgeInsets.zero,
          pagingController: controller.whoLikesMePagingController,
          builderDelegate: PagedChildBuilderDelegate<Post>(
            noItemsFoundIndicatorBuilder: (context) => Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: Dimens.defaultMargin,
                    left: Dimens.defaultMargin,
                    right: Dimens.defaultMargin,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/empty_rectangle.svg',
                    width: double.infinity,
                    height: 415.h,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 412.h,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icon/empty_icon.svg'),
                      AddVerticalSpace(10.h),
                      Text(
                        'No one likes YOU yet'.toUpperCase(),
                        style: Styles.kefa18Regular.copyWith(
                          color: AppColors.mainColor.withOpacity(0.6),
                        ),
                      ),
                      AddVerticalSpace(5),
                      Text(
                        'Keep sending Likes to Match',
                        style: Styles.kefa14Regular.copyWith(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            itemBuilder: (context, post, index) {
              return WhoLikesMeWidget(
                post: post,
                currentProfile: currentProfile,
                coordinate: controller.coordinate.value ??
                    Coordinate.fromGeopoint(currentProfile.location!.geopoint),
              );
            },
          ),
        ),
        onRefresh: () => Future.sync(
          () {
            _bloc.add(const PostEvent.getWhoLikesMePosts(1));
          },
        ),
      ),
    );
  }
}
