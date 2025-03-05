import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/fonts.dart';
import '../../core/size.dart';

class MainPageConfiguration extends StatefulWidget {
  const MainPageConfiguration({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  State<MainPageConfiguration> createState() => _MainPageConfigurationState();
}

class _MainPageConfigurationState extends State<MainPageConfiguration> {
  bool isActiveCall = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          widget.navigationShell,
          if (isActiveCall) //calling widget
            Positioned(
                top: MediaQuery.paddingOf(context).top * 0.8,
                right: 10,
                left: 10,
                child: Card(
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "George Allen",
                              style: AppFonts.titleFont(context),
                            ),
                            subtitle: Row(
                              spacing: 10,
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 15,
                                ),
                                Text("Incoming Voice Call")
                              ],
                            ),
                            trailing: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://randomuser.me/api/portraits/men/20.jpg"),
                            ),
                          ),
                          height10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      isActiveCall = false;
                                    });
                                  },
                                  color: Colors.red,
                                  height: 45,
                                  shape: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text("Decline"),
                                ),
                              ),
                              width10,
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      isActiveCall = false;
                                    });
                                    NavigationUtils.voiceCallPage(context);
                                  },
                                  color: Colors.green,
                                  height: 45,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  child: Text("Accept"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (value) => widget.navigationShell.goBranch(value),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined), label: "Status"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
