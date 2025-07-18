import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/certifications/components/image_viewer_drive.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/certification_controller.dart';

class CertificateStack extends StatelessWidget {
  final controller = Get.put(CertificationController());
  CertificateStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    bool isSpanish = context.locale.languageCode == 'es';
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        ShowImage(context, certificateList[index].credential, certificateList[index].download);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isSpanish ?  certificateList[index].nombre : certificateList[index].name ,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(certificateList[index].organization,style: const TextStyle(color: Colors.amber),),
                    Text(certificateList[index].date,style: const TextStyle(color: Colors.grey,fontSize: 12),),
                  ],
                ),
                const SizedBox(height: defaultPadding/2,),
                Text.rich(
                  maxLines: 1,
                  TextSpan(
                      text: '${StringTranslateExtension('Skills').tr()} : ',style: const TextStyle(color: Colors.white,),
                      children: [
                        TextSpan(
                          text: certificateList[index].skills,style: const TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),)
                      ]
                  ),),
                const SizedBox(height: defaultPadding,),
                InkWell(
                  onTap: () {
                    ShowImage(context, certificateList[index].credential, certificateList[index].download);
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.blue.shade900,
                            ]
                        ),
                        boxShadow:const [
                          BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
                          BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(StringTranslateExtension('Credentials').tr(),style: const TextStyle(color: Colors.white,fontSize: 10),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }

  // ignore: non_constant_identifier_names
  void ShowImage(BuildContext context, String credential, String download) {
    if (kIsWeb) {
      ImageViewerSmall(context, download, 0.5);  
    } else {
      if (download.isNotEmpty) {
        ImageViewerSmall(context, download, 0.8);     
      } else {
         launchurl(credential);
      }
    }
  }

  void launchurl(String credential) {
    final uri = Uri.tryParse(credential);
    if (uri != null) {
      launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('URL inválida: $credential');
    }
  }
}