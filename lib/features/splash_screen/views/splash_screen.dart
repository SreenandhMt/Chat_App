import 'package:chat_app/core/assets.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/status_bar_updater.dart';
import 'package:chat_app/features/settings/view_model/bloc/settings_bloc.dart';
import 'package:chat_app/route/auth_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../calls_screen/view_models/bloc/calling_bloc.dart';
import '../../home/view_models/bloc/home_bloc.dart';
import '../../status/view_models/bloc/status_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<SettingsBloc>().add(SettingsEvent.init());
    context.read<HomeBloc>().add(HomeEvent.getAllData());
    context.read<StatusBloc>().add(StatusEvent.getStatuses());
    context.read<CallingBloc>().add(CallingEvent.callHistory());
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(const Duration(seconds: 3));
        AuthChecker.checkAuth(context);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatusBarUpdater(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(55),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.logo(context),
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                height: 400,
                width: double.infinity,
              ),
            ),
            CircularProgressIndicator(
              color: AppColors.primary(context),
              strokeWidth: 7,
              strokeAlign: 1,
            ),
          ],
        ),
      ),
    );
  }
}
