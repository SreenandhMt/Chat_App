import 'package:chat_app/core/colors.dart';
import 'package:flutter/material.dart';

void showExpandableSnackBar(
    BuildContext context, String message, String details, String code) {
  bool expanded = false;

  final snackBarController = ScaffoldMessenger.of(context);

  snackBarController.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 9),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.redAccent,
      padding: EdgeInsets.zero,
      content: StatefulBuilder(
        builder: (context, setState) {
          return GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Container(
              color: Colors.redAccent,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(message,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  if (expanded) ...[
                    const SizedBox(height: 4),
                    Text(details, style: const TextStyle(fontSize: 12)),
                  ],
                  const SizedBox(height: 2),
                  Text(
                    expanded ? "Tap to hide details" : "Tap to show details",
                    style: const TextStyle(
                        fontSize: 10, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
