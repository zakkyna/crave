import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/widget/gender_widget.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectGenderPage extends StatelessWidget {
  final Function onNext;

  const SelectGenderPage({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        final genderId = state.genderId.foldRight(0, (acc, t) => t);
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(Dimens.defaultMargin),
                  child: Text(
                    'SELECT YOUR GENDER',
                    style: Styles.kefa24Medium,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    GenderWidget(
                      id: 1,
                      onTap: () {
                        context
                            .read<RegisterBloc>()
                            .add(const RegisterEvent.selectGender(1));
                      },
                      asset: 'assets/images/gender_male.svg',
                      title: 'MALE',
                      isSelected: genderId == 1,
                    ),
                    GenderWidget(
                      id: 2,
                      onTap: () {
                        context
                            .read<RegisterBloc>()
                            .add(const RegisterEvent.selectGender(2));
                      },
                      asset: 'assets/images/gender_female.svg',
                      title: 'FEMALE',
                      isSelected: genderId == 2,
                    ),
                    GenderWidget(
                      id: 3,
                      onTap: () {
                        context
                            .read<RegisterBloc>()
                            .add(const RegisterEvent.selectGender(3));
                      },
                      asset: 'assets/images/gender_other.svg',
                      title: 'OTHER',
                      isSelected: genderId == 3,
                    ),
                  ],
                )
              ],
            ),
            CustomButton(
              margin: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: Dimens.defaultMargin * 2,
              ),
              onPressed: () {
                if (genderId != 0) {
                  onNext();
                }
              },
              label: 'NEXT',
            ),
          ],
        );
      },
    );
  }
}
