import 'dart:io';

import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view_model/bloc/settings_bloc.dart';

final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
bool _isInit = false;
final _key = GlobalKey<FormState>();

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    _isInit = false;
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        if (!_isInit) {
          _firstNameController.text = state.userModel!.name.split(" ").first;
          _lastNameController.text = state.userModel!.name.split(" ").last;
          _isInit = true;
        }
        return Form(
          key: _key,
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.paddingOf(context).top + 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      width15,
                      IconButton(
                        onPressed: () => context.pop(),
                        icon: Icon(Icons.arrow_back_ios_rounded),
                      ),
                      width15,
                      Text("Edit Profile",
                          style: GoogleFonts.outfit(
                              fontSize: 19, fontWeight: FontWeight.w500))
                    ],
                  ),
                )),
            body: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                InkWell(
                  onTap: () async {
                    final file = await FilePicker.platform
                        .pickFiles(type: FileType.image);
                    if (file != null) {
                      final path = file.files.first.path;
                      context
                          .read<SettingsBloc>()
                          .add(SettingsEvent.setProfilePath(path: path!));
                    }
                  },
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: AppColors.grey(context),
                    backgroundImage: state.path != null
                        ? FileImage(File(state.path!))
                        : state.userModel!.imageUrl!.isNotEmpty
                            ? NetworkImage(state.userModel!.imageUrl!)
                            : null,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: state.path == null &&
                                  state.userModel!.imageUrl!.isEmpty
                              ? Icon(
                                  CupertinoIcons.person,
                                  size: 50,
                                )
                              : null,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                height45,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    autofocus: true,
                    controller: _firstNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "The First name is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText:
                          LocaleData.profileFirstNameHitText.getString(context),
                      filled: true,
                      fillColor: AppColors.grey(context),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      hintText:
                          LocaleData.profileLastNameHitText.getString(context),
                      filled: true,
                      fillColor: AppColors.grey(context),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Spacer(),
                AppButton(
                  title: "Edit",
                  onPressed: () {
                    if (!_key.currentState!.validate()) return;
                    context.read<SettingsBloc>().add(SettingsEvent.editProfile(
                        name: _lastNameController.text.isEmpty
                            ? _firstNameController.text
                            : "${_firstNameController.text} ${_lastNameController.text}",
                        profileImagePath: state.path));
                  },
                ),
                height20,
              ],
            ),
          ),
        );
      },
    );
  }
}
