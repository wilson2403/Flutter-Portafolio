import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    required this.title,
    required this.text,
    required this.url,
  });

  final String title;
  final String text;
  final String url;

  void _launchURL() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              text,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AreaInfoText extends StatelessWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   AreaInfoText({super.key, required this.title, required this.text});
//   final String title;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  const EdgeInsets.only(bottom: defaultPadding/2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // ignore: prefer_const_constructors
//           Text(title,style: TextStyle(color: Colors.white),),
//           Text(text),
//         ],
//       ),
//     );
//   }
// }