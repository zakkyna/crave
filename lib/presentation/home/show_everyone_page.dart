import 'package:crave_app/presentation/home/widgets/show_everyone_widget.dart';
import 'package:flutter/material.dart';

class ShowEveryOnePage extends StatelessWidget {
  const ShowEveryOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ShowEveryOneWidget(),
        ShowEveryOneWidget(),
      ],
    );
  }
}
