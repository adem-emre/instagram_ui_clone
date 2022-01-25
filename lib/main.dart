import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/theme/theme_notifier.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';
import 'package:instagram_clone/views/instagram.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [AppConstant.EN_LOCALE, AppConstant.TR_LOCALE],
    path: AppConstant.LANG_PATH,
    child: MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeNotifier())],
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeNotifier.lightTheme,
      darkTheme: ThemeNotifier.darkTheme,
      themeMode: context.watch<ThemeNotifier>().themeState == ThemeState.dark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const Instagram(),
    );
  }
}
