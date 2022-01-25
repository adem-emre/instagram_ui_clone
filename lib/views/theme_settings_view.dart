import 'package:flutter/material.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:instagram_clone/theme/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';



class ThemeSettingsView extends StatelessWidget {
   const ThemeSettingsView({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.themeTitle.tr()),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeState>(title:  Text(LocaleKeys.lightTheme.tr()),value: ThemeState.light, groupValue: context.watch<ThemeNotifier>().themeState, onChanged: (value){
            context.read<ThemeNotifier>().changeTheme(value!);
          }),
          RadioListTile<ThemeState>(title:  Text(LocaleKeys.darkTheme.tr()),value: ThemeState.dark, groupValue: context.watch<ThemeNotifier>().themeState, onChanged: (value){
            context.read<ThemeNotifier>().changeTheme(value!);

          }),
        ],
      ),
    );
  }
}