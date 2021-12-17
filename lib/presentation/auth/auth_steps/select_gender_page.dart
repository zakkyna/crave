import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/widget/gender_widget.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectGenderPage extends HookWidget {
  final Function onNext;

  const SelectGenderPage({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = useState(0);

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
                    selected.value = 1;
                  },
                  asset: 'assets/images/gender_male.svg',
                  title: 'MALE',
                  isSelected: selected.value == 1,
                ),
                GenderWidget(
                  id: 2,
                  onTap: () {
                    selected.value = 2;
                  },
                  asset: 'assets/images/gender_female.svg',
                  title: 'FEMALE',
                  isSelected: selected.value == 2,
                ),
                GenderWidget(
                  id: 3,
                  onTap: () {
                    selected.value = 3;
                  },
                  asset: 'assets/images/gender_other.svg',
                  title: 'OTHER',
                  isSelected: selected.value == 3,
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
            onNext();
          },
          label: 'NEXT',
        ),
      ],
    );
  }
}
