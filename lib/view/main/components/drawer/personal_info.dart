import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: StringTranslateExtension('Contact').tr(), text: '+506 8799 2560', url: 'https://wa.me/03054200605'),
        AreaInfoText(title: StringTranslateExtension('Email').tr(), text: 'creatuappinteligente@gmail.com', url: 'mailto:creatuappinteligente@gmail.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@wilson-alfaro-205001239', url: 'https://www.linkedin.com/in/wilson-alfaro-205001239?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'),
        const AreaInfoText(title: 'Github', text: '@wilson2403', url: 'https://github.com/wilson2403'),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(StringTranslateExtension('Skills').tr(),style: const TextStyle(color: Colors.white),),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
