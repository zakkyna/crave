import 'package:crave_app/presentation/home/widgets/who_likes_me_widget.dart';
import 'package:flutter/material.dart';

class WhoLikesMePage extends StatelessWidget {
  const WhoLikesMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        WhoLikesMeWidget(),
        WhoLikesMeWidget(),
      ],
    );
  }
}
