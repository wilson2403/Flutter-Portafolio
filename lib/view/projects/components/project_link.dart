import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    String site = projectList[index].link.toLowerCase();
    return Row(
      children: [
        Row(
          children: [
            Text(StringTranslateExtension((site.contains('github')) ? 'CheckGithub' : 'CheckDemo').tr(),style: const TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
            // IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].link));}, icon: SvgPicture.asset('assets/icons/github.svg')),
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].link));
            }, child: Text(StringTranslateExtension('ReadMore').tr(),overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10),))
      ],
    );
  }
}
