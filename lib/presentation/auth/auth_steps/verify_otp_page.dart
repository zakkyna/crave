import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function onNext;
  const VerifyOtpPage({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    final focusNode = FocusNode();
    textEditingController.addListener(() {
      if (textEditingController.text.length == 7) {
        focusNode.unfocus();
        onNext();
      }
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(Dimens.defaultMargin),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
          child: Text(
            'Your verification code from phone number',
            style: Styles.kefa18Medium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Dimens.defaultMargin),
          child: TextFormField(
            focusNode: focusNode,
            controller: textEditingController,
            style: Styles.kefa24Medium,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              MaskedInputFormatter(
                '000-000',
              )
            ],
            decoration: const InputDecoration(
              hintText: 'ENTER CODE',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
