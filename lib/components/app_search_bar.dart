import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../core/colors.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.submitted,
  });
  final TextEditingController? controller;
  final Function(String)? submitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: submitted,
      decoration: InputDecoration(
        hintText: LocaleData.searchText.getString(context),
        prefixIcon: Icon(Icons.search),
        fillColor: AppColors.grey(context),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          gapPadding: 5.0,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
