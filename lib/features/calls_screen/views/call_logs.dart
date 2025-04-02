import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/features/calls_screen/view_models/bloc/calling_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class CallLogsScreen extends StatelessWidget {
  const CallLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CallingBloc>().add(CallingEvent.callHistory());
    return BlocBuilder<CallingBloc, CallingState>(builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              LocaleData.callsText.getString(context),
              style: AppFonts.appBarStyle(context),
            ),
          ),
          body: ListView(
            children: [
              StreamBuilder(
                stream: state.stream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return SizedBox.shrink();
                  }
                  context.read<CallingBloc>().add(
                      CallingEvent.updateActiveCalls(
                          docs: snapshot.data!.docs));
                  return Column(
                    children: List.generate(
                      state.activeCalls.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        child: ListTile(
                          onTap: () {
                            if (state.activeCalls[index].isVideoCall) {
                              context.read<CallingBloc>().add(
                                  CallingEvent.setCurrentCall(
                                      callModel: state.activeCalls[index]));
                              NavigationUtils.videoCallPage(context);
                            } else {
                              context.read<CallingBloc>().add(
                                  CallingEvent.setCurrentCall(
                                      callModel: state.activeCalls[index]));
                              NavigationUtils.voiceCallPage(context);
                            }
                          },
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                state.activeCalls[index].userModels?.imageUrl ??
                                    state.activeCalls[index].groupImage ??
                                    ""),
                          ),
                          title: Text(
                            state.activeCalls[index].userModels?.name ??
                                state.activeCalls[index].groupName ??
                                "",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Row(
                            spacing: 10,
                            children: [
                              Icon(Icons.call_made_outlined,
                                  color: Colors.green),
                              Text("${state.activeCalls[index].date}"),
                            ],
                          ),
                          trailing: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              ...List.generate(
                state.callHistory.length,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: ListTile(
                    onTap: () {
                      context.read<CallingBloc>().add(
                          CallingEvent.selectCallModel(
                              callModel: state.callHistory[index]));
                      NavigationUtils.callDetailsPage(context);
                    },
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          state.callHistory[index].userModels?.imageUrl ??
                              state.callHistory[index].groupImage ??
                              ""),
                    ),
                    title: Text(
                      state.callHistory[index].userModels?.name ??
                          state.callHistory[index].groupName ??
                          "",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: state.callHistory[index].status == "missed" &&
                                  !state.callHistory[index].isCaller
                              ? Colors.red
                              : null),
                    ),
                    subtitle: Row(
                      children: [
                        state.callHistory[index].status == "missed"
                            ? state.callHistory[index].isCaller
                                ? Icon(Icons.call_made_outlined,
                                    color: Colors.red)
                                : Icon(Icons.call_missed, color: Colors.red)
                            : state.callHistory[index].isCaller
                                ? Icon(Icons.call_made_outlined,
                                    color: Colors.green)
                                : Icon(Icons.call_received_rounded,
                                    color: Colors.green),
                        Text("${state.callHistory[index].date}"),
                      ],
                    ),
                    trailing: state.callHistory[index].isVideoCall
                        ? Icon(Icons.videocam_outlined)
                        : Icon(Icons.call),
                  ),
                ),
              )
            ],
          ));
    });
  }
}
