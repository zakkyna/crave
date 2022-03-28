import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/application/home/home_controller.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/application/profile/profile_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/home/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowEveryOnePage extends GetView<HomeController> {
  final Profile currentProfile;
  const ShowEveryOnePage(
    this.currentProfile, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<PostBloc>();

    _bloc.add(PostEvent.getAllPostStream(
      radius: controller.radius.value,
      profile: currentProfile,
    ));

    return BlocListener<PostBloc, PostState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          getAllPostStreamSuccess: (value) {
            controller.postStream.value = value.postStream;
            controller.coordinate.value = value.postStream.coordinate;
            if (controller.coordinate.value == null ||
                controller.coordinate.value?.latitude !=
                    value.postStream.coordinate.latitude ||
                controller.coordinate.value?.longitude !=
                    value.postStream.coordinate.longitude) {
              context.read<ProfileBloc>().add(
                  ProfileEvent.updateLocation(value.postStream.coordinate));
            }
          },
        );
      },
      child: RefreshIndicator(
        child: Obx(
          () => controller.postStream.value == null ||
                  controller.coordinate.value == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : StreamBuilder<List<DocumentSnapshot<Object?>>>(
                  stream: controller.postStream.value!.stream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.active) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    }

                    if (snapshot.hasData &&
                        (snapshot.data?.isNotEmpty ?? false)) {
                      final data = snapshot.data;
                      if (data == null) {
                        return const Center(
                          child: Text('No user found at the moment'),
                        );
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          try {
                            final postData =
                                data[index].data() as Map<String, dynamic>?;
                            if (postData == null) return Container();
                            final post = Post.fromJson(postData);
                            // if (post.uid == currentProfile.uid) {
                            //   return Container();
                            // }
                            // if (post.dismissedBy
                            //         ?.containsKey(currentProfile.uid) ??
                            //     false) {
                            //   return Container();
                            // }
                            return PostWidget(
                              post: post,
                              currentProfile: currentProfile,
                              coordinate: controller.coordinate.value!,
                            );
                          } catch (_) {
                            return const Center(
                              child: Text('Error in data'),
                            );
                          }
                        },
                      );
                    } else {
                      return Stack(
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
                          Container(
                            height: 412.h,
                            padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.defaultMargin,
                            ),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icon/empty_icon.svg'),
                                AddVerticalSpace(10.h),
                                Text(
                                  'YOU\'VE ALREADY LIKED EVERYONE NEARBY, WAIT FOR MATCH'
                                      .toUpperCase(),
                                  style: Styles.kefa18Regular.copyWith(
                                    color: AppColors.mainColor.withOpacity(0.6),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                // AddVerticalSpace(5),
                                // Text(
                                //   'Keep sending Likes to Match',
                                //   style: Styles.kefa14Regular.copyWith(
                                //     color: Colors.black.withOpacity(0.3),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
        ),
        onRefresh: () async {
          _bloc.add(PostEvent.getAllPostStream(
            radius: controller.radius.value,
            profile: currentProfile,
          ));
        },
      ),
    );
  }
}
