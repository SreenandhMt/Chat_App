// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/features/settings/service/setting_service.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/calls_screen/view_models/bloc/calling_bloc.dart';
import '../features/home/view_models/bloc/home_bloc.dart';
import '../features/settings/view_model/bloc/settings_bloc.dart';
import '../features/status/view_models/bloc/status_bloc.dart';

class AuthChecker {
  static void checkAuth(BuildContext context) async {
    if (FirebaseAuth.instance.currentUser == null) {
      NavigationUtils.introductionPage(context);
    } else if (!await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) => value.exists)) {
      NavigationUtils.createProfilePage(context);
    } else {
      //getting data
      context.read<SettingsBloc>().add(SettingsEvent.init());
      context.read<HomeBloc>().add(HomeEvent.getAllData());
      context.read<StatusBloc>().add(StatusEvent.getStatuses());
      context.read<CallingBloc>().add(CallingEvent.callHistory());
      //
      if (SettingService.getAppLock() != null) {
        NavigationUtils.appLock(context);
        return;
      }
      NavigationUtils.home(context);
    }
  }
}
