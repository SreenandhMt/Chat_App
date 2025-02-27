import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class BannedMembers extends StatelessWidget {
  const BannedMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banned Members'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                fillColor: AppColors.grey(context),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  gapPadding: 5.0,
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          ...List.generate(
            10,
            (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/1.jpg"),
                  ),
                  title: Text("User $index"),
                  trailing: Icon(Icons.close),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
