import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//add this to initializing page
class StatusBarUpdater extends StatelessWidget {
  final Widget child;

  const StatusBarUpdater({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLightMode = theme.brightness == Brightness.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: theme.scaffoldBackgroundColor,
        systemNavigationBarIconBrightness:
            isLightMode ? Brightness.dark : Brightness.light,
        statusBarBrightness: isLightMode ? Brightness.dark : Brightness.light,
        statusBarColor: theme.scaffoldBackgroundColor,
        statusBarIconBrightness:
            isLightMode ? Brightness.dark : Brightness.light,
      ),
    );

    return child;
  }
}
