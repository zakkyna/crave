import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/application/profile/profile_bloc.dart';
import 'package:crave_app/application/profile/update_profile/update_profile_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/custom_textfield.dart';
import 'package:crave_app/presentation/core/widget/stack_with_progress.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompleteProfilePage extends StatelessWidget {
  final Profile currentProfile;
  const CompleteProfilePage(this.currentProfile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<UpdateProfileBloc>();
    final _profileBloc = context.read<ProfileBloc>();
    final bioController = TextEditingController();
    bioController.addListener(() {
      _bloc.add(UpdateProfileEvent.bioChanged(bioController.text));
    });
    void _handleAddPhoto() {
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SafeArea(
              child: SizedBox(
                height: 160.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    addVerticalSpace(10.h),
                    TextButton(
                      onPressed: () {
                        Get.back();
                        _bloc.add(
                          const UpdateProfileEvent.addPhotoViaCamera(),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(
                          10.h,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Camera',
                            style: Styles.kefa16Regular.copyWith(
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                        _bloc.add(
                          const UpdateProfileEvent.addPhotoViaGallery(),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(
                          10.h,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Gallery',
                            style: Styles.kefa16Regular.copyWith(
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(30.h),
                  ],
                ),
              ),
            );
          });
    }

    void _handleDeletePhoto(String url) {
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SafeArea(
              child: SizedBox(
                height: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    addVerticalSpace(10.h),
                    TextButton(
                      onPressed: () {
                        Get.back();
                        _bloc.add(
                          UpdateProfileEvent.deletePhoto(url),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(
                          10.h,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Delete',
                            style: Styles.kefa16Regular.copyWith(
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
          bloc: _bloc..add(UpdateProfileEvent.init(currentProfile)),
          listener: (context, state) {
            state.updateProfileFailureOrSuccessOption.match((failureOrSuccess) {
              failureOrSuccess.match(
                (failure) {
                  final message = failure.map(
                    noInternet: (_) => 'No internet',
                    unexpected: (_) => 'Unexpected error',
                    notFound: (_) => 'Data not found',
                    unauthenticated: (_) => 'Unauthenticated',
                    serverError: (_) => 'Server error',
                    cancelledByUser: (_) => 'Cancelled',
                  );
                  Get.snackbar(
                    'Sorry',
                    message,
                  );
                },
                (path) {
                  _profileBloc.add(const ProfileEvent.getCurrentProfile());
                },
              );
            }, () {});
            state.pickPhotoFailureOrSuccessOption.match((failureOrSuccess) {
              failureOrSuccess.match(
                (failure) {
                  final message = failure.map(
                    noInternet: (_) => 'No internet',
                    unexpected: (_) => 'Unexpected error',
                    notFound: (_) => 'Data not found',
                    unauthenticated: (_) => 'Unauthenticated',
                    serverError: (_) => 'Server error',
                    cancelledByUser: (_) => 'Cancelled',
                  );
                  Get.snackbar(
                    'Sorry',
                    message,
                  );
                },
                (path) {
                  _bloc.add(UpdateProfileEvent.uploadPhoto(path));
                },
              );
            }, () {});
            state.uploadPhotoFailureOrSuccessOption.match((failureOrSuccess) {
              failureOrSuccess.match(
                (failure) {
                  final message = failure.map(
                    noInternet: (_) => 'No internet',
                    unexpected: (_) => 'Unexpected error',
                    notFound: (_) => 'Data not found',
                    unauthenticated: (_) => 'Unauthenticated',
                    serverError: (_) => 'Server error',
                    cancelledByUser: (_) => 'Cancelled',
                  );
                  Get.snackbar(
                    'Sorry',
                    message,
                  );
                },
                (path) {
                  _bloc.add(UpdateProfileEvent.successUpload(path));
                },
              );
            }, () {});
            state.deletePhotoFailureOrSuccessOption.match((failureOrSuccess) {
              failureOrSuccess.match(
                (failure) {
                  final message = failure.map(
                    noInternet: (_) => 'No internet',
                    unexpected: (_) => 'Unexpected error',
                    notFound: (_) => 'Data not found',
                    unauthenticated: (_) => 'Unauthenticated',
                    serverError: (_) => 'Server error',
                    cancelledByUser: (_) => 'Cancelled',
                  );
                  Get.snackbar(
                    'Sorry',
                    message,
                  );
                },
                (path) {
                  _bloc.add(UpdateProfileEvent.successDelete(path));
                },
              );
            }, () {});
          },
          builder: (context, state) {
            return StackWithProgress(
              isLoading: state.isLoading,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimens.defaultMargin),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              'COMPLETE PROFILE',
                              style: Styles.kefa18SemiBold,
                            ),
                          ),
                        ),
                        addVerticalSpace(30.h),
                        Expanded(
                          child: CustomTextField(
                            controller: bioController,
                            fillColor: Colors.transparent,
                            border: false,
                            expands: true,
                            inputStyle: Styles.kefa16Regular,
                            hintStyle: Styles.kefa16Regular.copyWith(
                              color: Colors.grey[400],
                              height: 1.6,
                            ),
                            hintMaxLines: 3,
                            hintText:
                                'Write what you want to tell the others on Crave... '
                                    .toUpperCase(),
                          ),
                        ),
                        addVerticalSpace(20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              3,
                              (index) => index + 1,
                            ).map(
                              (index) => state.photos.length < index
                                  ? Ink.image(
                                      height: 160.h,
                                      width: 100.w,
                                      fit: BoxFit.contain,
                                      image: Svg(
                                        'assets/images/add_photo_$index.svg',
                                        size: Size(100.w, 160.h),
                                      ),
                                      padding: EdgeInsets.zero,
                                      child: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(12.w),
                                        onTap: () => _handleAddPhoto(),
                                      ),
                                    )
                                  : Ink(
                                      height: 160.h,
                                      width: 100.w,
                                      padding: EdgeInsets.zero,
                                      child: Badge(
                                        position: BadgePosition.topEnd(
                                          top: 6.h,
                                          end: 6.w,
                                        ),
                                        badgeColor: Colors.black45,
                                        badgeContent: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(12.w),
                                          onTap: () => _handleDeletePhoto(
                                              state.photos[index - 1]),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: CachedNetworkImage(
                                              imageUrl: state.photos[index - 1],
                                              fit: BoxFit.cover,
                                              height: 160.h,
                                              width: 100.w,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                        addVerticalSpace(20.h),
                        CustomButton(
                          height: 56.h,
                          onPressed: state.photos.isNotEmpty &&
                                  state.bio.isValid()
                              ? () => _bloc
                                  .add(const UpdateProfileEvent.postPressed())
                              : null,
                          label: 'POST',
                        ),
                        addVerticalSpace(20.h)
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
