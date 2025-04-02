import 'package:chat_app/core/status_updater.dart';
import 'package:chat_app/core/theme.dart';
import 'package:chat_app/core/timestamp_adapter.dart';
import 'package:chat_app/features/auth/view_models/bloc/auth_bloc.dart';
import 'package:chat_app/features/calls_screen/view_models/bloc/calling_bloc.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';
import 'package:chat_app/features/contact/view_models/bloc/contact_bloc.dart';
import 'package:chat_app/features/group_chat/view_model/bloc/group_bloc.dart';
import 'package:chat_app/features/home/view_models/bloc/home_bloc.dart';
import 'package:chat_app/features/settings/view_model/bloc/settings_bloc.dart';
import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final statusManager = OnlineStatusManager();
  statusManager.init();
  await Hive.initFlutter();
  if (!Hive.isBoxOpen('setting')) {
    await Hive.openBox('setting');
  }
  await Hive.openBox('chatsCount');
  await Hive.openBox('category');
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => StatusBloc(),
        ),
        BlocProvider(
          create: (context) => CallingBloc(),
        ),
        BlocProvider(
          create: (context) => ChatBloc(),
        ),
        BlocProvider(
          create: (context) => GroupBloc(),
        ),
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
        BlocProvider(
          create: (context) => ContactBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Comet Chat',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        supportedLocales: localization.supportedLocales,
        localizationsDelegates: localization.localizationsDelegates,
        routerConfig: AppRouter.router,
      ),
    );
  }

  void localizationConfiguration() {
    localization.init(mapLocales: mapLocales, initLanguageCode: "en");
    localization.onTranslatedLanguage = (locals) {
      setState(() {});
    };
  }
}
