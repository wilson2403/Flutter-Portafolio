import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class changeLenguage extends StatelessWidget {
  const changeLenguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String locale = Localizations.localeOf(context).languageCode.toLowerCase(); 
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          final bool isSpanish = context.locale.languageCode == 'es';
          context.setLocale(
            isSpanish ? const Locale('en') : const Locale('es'),
          );
          Navigator.of(context).pushNamedAndRemoveUntil('/',(route) => false,);
        },
        borderRadius: BorderRadius.circular(defaultPadding),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
            boxShadow:const [
              BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: defaultPadding/4),
              BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: defaultPadding/4),
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(FontAwesomeIcons.language,color: Colors.greenAccent,size: 15,),
              const SizedBox(width : defaultPadding/3),
              Text(locale.toString(), style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold
              ),),
            ],
          )
        ),
      ),
    );
  }
}