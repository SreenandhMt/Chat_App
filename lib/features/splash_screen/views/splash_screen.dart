import 'package:chat_app/core/assets.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/status_bar_updater.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(const Duration(seconds: 3));
        if (mounted) {
          context.go("/");
          // NavigationUtils.introductionPage(context);
        }
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
