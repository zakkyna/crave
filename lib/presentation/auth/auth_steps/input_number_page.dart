import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class InputNumberPage extends StatelessWidget {
  final Function onNext;
  const InputNumberPage({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    final focusNode = FocusNode();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(Dimens.defaultMargin),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: Text(
                'Your phone number is required for login',
                style: Styles.kefa18Medium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: TextFormField(
                controller: textEditingController,
                focusNode: focusNode,
                keyboardType: TextInputType.number,
                style: Styles.kefa24Medium,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  PhoneInputFormatter(allowEndlessPhone: true),
                ],
                decoration: const InputDecoration(
                  hintText: 'ENTER PHONE NUMBER',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        CustomButton(
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.defaultMargin,
            vertical: Dimens.defaultMargin * 2,
          ),
          onPressed: () {
            focusNode.unfocus();
            onNext();
          },
          label: 'NEXT',
        ),
      ],
    );
  }
}
