import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';
import 'package:instagram_clone/views/instagram.dart';

class LanguageSettingsView extends StatelessWidget {
  const LanguageSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.language.tr()),
      ),
      body: Column(
        children: [
          ListTile(title: Text(LocaleKeys.english.tr()), onTap: ()async{
              context.setLocale(AppConstant.EN_LOCALE);
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const Instagram()), (route) => false);
        
          },),
           ListTile(title: Text(LocaleKeys.turkish.tr()), onTap: ()async{
             context.setLocale(AppConstant.TR_LOCALE);
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const Instagram()), (route) => false);

        
          },),
        ],
      ),
    );
  }
}
