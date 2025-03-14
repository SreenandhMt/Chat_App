import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/chat_page/view_models/bloc/chat_bloc.dart';

import '../../features/group_chat/view_model/bloc/group_bloc.dart';

class PollCreatingWidget extends StatefulWidget {
  const PollCreatingWidget({
    super.key,
    this.isGroup = false,
  });
  final bool isGroup;

  @override
  State<PollCreatingWidget> createState() => _PollCreatingWidgetState();
}

class _PollCreatingWidgetState extends State<PollCreatingWidget> {
  int options = 2;
  final TextEditingController questionController = TextEditingController();
  final List<TextEditingController> optionControllers = [
    TextEditingController(),
    TextEditingController()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  height25,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Question",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  height10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      controller: questionController,
                      decoration: InputDecoration(
                        hintText: 'Enter your question',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Options",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ...List.generate(
                    options,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        controller: optionControllers[index],
                        decoration: InputDecoration(
                          hintText: 'Option ${index + 1}',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: index == 0 || index == 1
                              ? null
                              : IconButton(
                                  onPressed: () => setState(
                                    () {
                                      optionControllers.removeAt(index);
                                      options--;
                                    },
                                  ),
                                  icon: Icon(Icons.delete),
                                ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() {
                      optionControllers.add(TextEditingController());
                      options++;
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          width10,
                          Text("Add Option"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppButton(
              title: "Create Poll",
              onPressed: () {
                if (widget.isGroup) {
                  context.read<GroupBloc>().add(
                        GroupEvent.createPoll(
                          question: questionController.text,
                          options:
                              optionControllers.map((e) => e.text).toList(),
                        ),
                      );
                  return;
                }
                context.read<ChatBloc>().add(
                      ChatEvent.createPoll(
                        question: questionController.text,
                        options: optionControllers.map((e) => e.text).toList(),
                      ),
                    );
              },
            )
          ],
        ),
      ),
    );
  }
}
