import 'package:chat_app/core/status_bar_updater.dart';
import 'package:chat_app/core/theme.dart';
import 'package:chat_app/features/auth/views/create_profile_page.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/splash_screen/views/splash_screen.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    localizationConfiguration();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Chateo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      routerConfig: AppRouter.router,
    );
  }

  void localizationConfiguration() {
    localization.init(mapLocales: mapLocales, initLanguageCode: "en");
    localization.onTranslatedLanguage = (locals) {
      setState(() {});
    };
  }
}
