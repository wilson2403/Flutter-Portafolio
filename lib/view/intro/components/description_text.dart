import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 1000),
      builder: (context, value, child) {
        return SafeArea(
          child: Text(
            StringTranslateExtension('MyPersonalDescription').tr(),
            textAlign: TextAlign.justify,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
          ),
        );
      },
    );
  }
}