import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/calls_screen/view_models/bloc/calling_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class CallDetailsPage extends StatelessWidget {
  const CallDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallingBloc, CallingState>(builder: (context, state) {
      if (state.selectedCall == null) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(LocaleData.callDetailsText.getString(context)),
          ),
          body: Column(
            children: [
              height10,
              Row(
                children: [
                  width20,
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        state.selectedCall!.userModels?.imageUrl ??
                            state.selectedCall!.groupImage ??
                            ""),
                  ),
                  width10,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.selectedCall!.userModels?.name ??
                            state.selectedCall!.groupName ??
                            "",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Text(state.selectedCall!.userModels?.status ?? ""),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.call),
                  ),
                  width10,
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.videocam_outlined),
                  ),
                  width5
                ],
              ),
              height10,
              Divider(),
              ListTile(
                leading: Icon(
                    state.selectedCall!.isCaller
                        ? Icons.call_made_outlined
                        : Icons.call_received,
                    color: state.selectedCall?.status == "missed"
                        ? Colors.red
                        : Colors.green),
                title: Text(
                  state.selectedCall!.isCaller ? "Outgoing" : "Incoming",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: state.selectedCall?.status == "missed"
                          ? Colors.red
                          : Colors.green),
                ),
                subtitle: Row(
                  children: [
                    Text(state.selectedCall!.date ?? ""),
                  ],
                ),
                trailing: Text(
                  state.selectedCall!.callDuration,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Divider(),
              TabBar(
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Text(
                      LocaleData.participantsText.getString(context),
                      style: TextStyle(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      LocaleData.recordingText.getString(context),
                      style: TextStyle(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      LocaleData.historyText.getString(context),
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView(
                    children: List.generate(
                      state.selectedCallUsers.length + 1,
                      (index) => index == 0
                          ? Padding(
                              padding: const EdgeInsets.all(3),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(FirebaseAuth
                                          .instance.currentUser!.photoURL ??
                                      ""),
                                ),
                                title: Text(
                                  "You",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(FirebaseAuth
                                        .instance.currentUser!.phoneNumber ??
                                    ""),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(3),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(state
                                          .selectedCallUsers[index - 1]
                                          .imageUrl ??
                                      ""),
                                ),
                                title: Text(
                                  state.selectedCallUsers[index - 1].name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(state
                                    .selectedCallUsers[index - 1].phoneNumber),
                              ),
                            ),
                    ),
                  ),
                  ListView(
                    children: List.generate(
                      0,
                      (index) => ListTile(
                        title: Text(
                          "Record1200045",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text("8 August, 8:14 pm"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.play_arrow_outlined,
                                color: AppColors.primary(context)),
                            width10,
                            Icon(Icons.file_download_outlined,
                                color: AppColors.primary(context)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    children: List.generate(
                      state.selectedCallHistory.length,
                      (index) => ListTile(
                        leading: Icon(
                          state.selectedCallHistory[index].isCaller
                              ? Icons.call_made_outlined
                              : Icons.call_received,
                          color: state.selectedCallHistory[index].status ==
                                  "missed"
                              ? Colors.red
                              : Colors.green,
                        ),
                        title: Text(
                          state.selectedCallHistory[index].isCaller
                              ? "Outgoing"
                              : "Incoming",
                          style: TextStyle(
                            fontSize: 16,
                            color: state.selectedCallHistory[index].status ==
                                    "missed"
                                ? Colors.red
                                : Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(state.selectedCallHistory[index].date ?? ""),
                          ],
                        ),
                        trailing: Text(
                          state.selectedCallHistory[index].callDuration,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      );
    });
  }
}
