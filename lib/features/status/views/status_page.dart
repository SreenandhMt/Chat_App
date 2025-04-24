import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/error_snackbar.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/status/models/status_model.dart';
import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../components/status/status_ring.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StatusBloc>().add(StatusEvent.getStatuses());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleData.statusText.getString(context),
            style: AppFonts.appBarStyle(context),
          ),
        ),
        body: BlocConsumer<StatusBloc, StatusState>(listener: (context, state) {
          if (state.error != null) {
            showExpandableSnackBar(context, state.error!.message,
                "Error Status: ${state.error!.details}", state.error!.code);
            context.read<StatusBloc>().add(StatusEvent.clearErrorMessage());
          }
        }, builder: (context, state) {
          return ListView(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    if (state.myStatus.isEmpty) return;
                    context.read<StatusBloc>().add(StatusEvent.selectStatus(
                        value: {"user": null, "status": state.myStatus}));
                    NavigationUtils.statusViewPage(context);
                  },
                  child: StatusRing(
                    gapSize: state.myStatus.length >= 2 ? 0.3 : 0,
                    progress: 1.0,
                    segments: state.myStatus.length,
                    color: Colors.blueGrey,
                    image: _auth.currentUser!.photoURL ?? "",
                  ),
                ),
                title: Text(LocaleData.myStatusText.getString(context)),
                subtitle:
                    Text(LocaleData.myStatusSubtitleText.getString(context)),
                onTap: () => NavigationUtils.createStatusMedia(context),
              ),
              height10,
              if (state.statuses.isNotEmpty)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    LocaleData.resetStatusText.getString(context),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ),
              ...state.statuses.entries.map((entry) {
                final user = entry.value["user"] as UserModels;
                final statuses = entry.value["status"] as List<StatusModel>;
                final viewedIndex = entry.value["isViewed"] as int;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: StatusRing(
                      gapSize: statuses.length >= 2 ? 0.3 : 0,
                      progress: 1.0,
                      segments: statuses.length,
                      viewedIndex: viewedIndex,
                      color: AppColors.primary(context),
                      image: user.imageUrl ?? "",
                    ),
                    title: Text(user.name),
                    subtitle: Text("Today 4:37 pm"),
                    onTap: () {
                      context.read<StatusBloc>().add(StatusEvent.selectStatus(
                              value: {
                                "user": user,
                                "status": statuses,
                                "viewedIndex": viewedIndex
                              }));
                      NavigationUtils.statusViewPage(context);
                    },
                  ),
                );
              }),
              if (state.viewedStatus.isNotEmpty)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    LocaleData.viewedStatusText.getString(context),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ),
              ...state.viewedStatus.entries.map((entry) {
                final user = entry.value["user"] as UserModels;
                final statuses = entry.value["status"] as List<StatusModel>;
                final viewedIndex = entry.value["isViewed"] as int;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: StatusRing(
                      gapSize: statuses.length >= 2 ? 0.3 : 0,
                      progress: 1.0,
                      segments: statuses.length,
                      viewedIndex: viewedIndex,
                      color: AppColors.primary(context),
                      image: user.imageUrl ?? "",
                    ),
                    title: Text(user.name),
                    subtitle: Text("Today 4:37 pm"),
                    onTap: () {
                      context.read<StatusBloc>().add(StatusEvent.selectStatus(
                              value: {
                                "user": user,
                                "status": statuses,
                                "viewedIndex": viewedIndex
                              }));
                      NavigationUtils.statusViewPage(context);
                    },
                  ),
                );
              }),
            ],
          );
        }));
  }
}
