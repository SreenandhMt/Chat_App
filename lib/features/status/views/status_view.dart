import 'dart:async';
import 'dart:developer';

import 'package:chat_app/core/all_fonts.dart';
import 'package:chat_app/core/color_list.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/models/user_models.dart';
import 'package:chat_app/features/status/models/status_model.dart';
import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final _auth = FirebaseAuth.instance;

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  final PageController _pageController = PageController();
  Timer? _timer;
  final List<double> _progress = [];
  final int _duration = 10;
  int currentPage = 0;

  @override
  void initState() {
    final state = context.read<StatusBloc>().state;
    final user = state.selectedStatus["user"] as UserModels?;
    final viewedIndex = state.selectedStatus["viewedIndex"] as int?;
    final status = state.selectedStatus["status"] as List<StatusModel>;
    for (var i = 0; i < status.length; i++) {
      _progress.add(0.0);
    }

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      _startTimer(status);
      if (viewedIndex != null && viewedIndex < status.length) {
        _pageController.jumpToPage(viewedIndex);
        for (var i = 0; i < viewedIndex; i++) {
          _progress[i] = 1.0;
        }
        currentPage = viewedIndex;
      } else {
        _pageController.jumpToPage(0);
      }
    });
    final bool isMe = user == null;
    _pageController.addListener(() {
      if (currentPage < _pageController.page!.toInt()) {
        _progress[currentPage] = 1.0;
        setState(() {});
        currentPage = _pageController.page!.toInt();
        _startTimer(status);
      }
      if (!isMe &&
          !status[_pageController.page!.toInt()]
              .views
              .contains(_auth.currentUser!.uid)) {
        context.read<StatusBloc>().add(StatusEvent.updateViews(
            uid: user.uid, statusId: status[_pageController.page!.toInt()].id));
      }
    });
    super.initState();
  }

  void _startTimer(List<StatusModel> status, {int? index}) {
    _timer?.cancel();
    final page = _pageController.page!.toInt() + (index ?? 0);
    _progress[page] = 0.0;
    currentPage = page;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentPage != page) {
        _timer!.cancel();
        return;
      }
      if (mounted) {
        setState(() {
          _progress[page] += 1 / _duration;
        });
      }

      if (_progress[page] >= 1.0) {
        _timer?.cancel();

        if (_pageController.page! < status.length - 1) {
          _pageController.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );

          Future.delayed(Duration(milliseconds: 501), () {
            _startTimer(status, index: 1);
          });
        } else {
          context.pop();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatusBloc, StatusState>(builder: (context, state) {
      final user = state.selectedStatus["user"] as UserModels?;
      final status = state.selectedStatus["status"] as List<StatusModel>;
      final bool isMe = user == null;

      return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: Padding(
              padding: MediaQuery.paddingOf(context),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      spacing: 5,
                      children: List.generate(
                        status.length,
                        (index) => Expanded(
                          child: LinearProgressIndicator(
                            color: _pageController.hasClients &&
                                    _pageController.page!.toInt() <= index
                                ? AppColors.primary(context)
                                : Colors.grey,
                            value: _progress[index],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      width10,
                      InkWell(
                          onTap: () => context.pop(),
                          child: Icon(Icons.arrow_back_outlined)),
                      width10,
                      CircleAvatar(
                        backgroundImage: NetworkImage(isMe
                            ? _auth.currentUser!.photoURL ?? ""
                            : user.imageUrl ?? ""),
                      ),
                      width5,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(isMe
                                ? _auth.currentUser!.displayName ?? ""
                                : user.name),
                          ],
                        ),
                      ),
                      if (isMe)
                        PopupMenuButton(
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        width10,
                                        Text("Delete Status"),
                                        width50,
                                        width20,
                                      ],
                                    ),
                                  ),
                                ],
                            child: Icon(Icons.more_vert))
                      else
                        Icon(Icons.more_vert),
                    ],
                  )
                ],
              ),
            )),
        body: PageView(
          controller: _pageController,
          children: List.generate(
            status.length,
            (index) {
              if (status[index].type == "text") {
                return Stack(
                  children: [
                    Container(
                      color: allColors[status[index].color ?? 0],
                      child: Center(
                        child: Text(
                          status[index].text ?? "",
                          style: styles[status[index].style ?? ""]
                              .copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                    if (status[index].caption != null)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(bottom: 30, top: 10),
                          decoration: BoxDecoration(color: Colors.black38),
                          child: Center(
                            child: Text(status[index].caption ?? "Hey"),
                          ),
                        ),
                      )
                  ],
                );
              }
              return Stack(
                children: [
                  Positioned.fill(
                      child: Image.network(status[index].image ?? "")),
                  if (status[index].caption != null)
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 30, top: 10),
                        decoration: BoxDecoration(color: Colors.black38),
                        child: Center(
                          child: Text(status[index].caption ?? "Hey"),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
