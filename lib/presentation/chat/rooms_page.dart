import 'package:crave_app/application/chat/rooms/rooms_bloc.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/chat/widgets/room_item_widget.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RoomsPage extends StatelessWidget {
  final Profile currentProfile;
  const RoomsPage(this.currentProfile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddVerticalSpace(Get.mediaQuery.padding.top + 10),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: SvgPicture.asset('assets/images/crave_logo.svg'),
            ),
          ),
          AddVerticalSpace(20.h),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: Center(
              child: Text(
                "MATCHES",
                style: Styles.kefa24Regular,
              ),
            ),
          ),
          AddVerticalSpace(10.h),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: Center(
              child: Text(
                'Send a Message to your Matches below',
                style: Styles.kefa16Regular.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          AddVerticalSpace(20.h),
          Expanded(
            child: BlocBuilder<RoomsBloc, RoomsState>(
              bloc: context.read<RoomsBloc>()
                ..add(const RoomsEvent.getStream()),
              builder: (context, state) {
                return state.streamFailureOrSuccessOptiion.match(
                  (failureOrSuccess) => failureOrSuccess.match(
                    (failure) {
                      final message = failure.maybeMap(
                        noInternet: (_) => 'No internet',
                        unexpected: (_) => 'Unexpected error',
                        userNotFound: (_) => 'User not found',
                        unauthenticated: (_) => 'Unauthenticated',
                        serverError: (message) => 'Server error: $message',
                        unauthorized: (_) => 'Unauthorized',
                        expired: (_) => 'Chat Expired',
                        orElse: () => 'Unexpected error',
                      );
                      return Center(
                        child: Text(message),
                      );
                    },
                    (stream) => RefreshIndicator(
                      child: StreamBuilder<List<RoomModel>>(
                        stream: stream,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.active) {
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
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: Dimens.defaultMargin,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 5.h,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return RoomItemWidget(
                                    roomModel: data[index],
                                    currentProfile: currentProfile,
                                  );
                                },
                              ),
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
                                SizedBox(
                                  height: 412.h,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/icon/empty_icon.svg'),
                                      AddVerticalSpace(10.h),
                                      Text(
                                        'No Matches'.toUpperCase(),
                                        style: Styles.kefa18Regular.copyWith(
                                          color: AppColors.mainColor
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                      AddVerticalSpace(5),
                                      Text(
                                        'Keep sending Likes to Match \nYou can send your matches \nMessages here.',
                                        style: Styles.kefa14Regular.copyWith(
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                      onRefresh: () async {
                        context
                            .read<RoomsBloc>()
                            .add(const RoomsEvent.getStream());
                      },
                    ),
                  ),
                  () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
