import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.paddingOf(context).top + 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                width15,
                IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.arrow_back_ios_rounded),
                ),
                width15,
                Text("Your Profile",
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
          CircleAvatar(
            radius: 55,
            backgroundColor: AppColors.grey(context),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.person,
                    size: 50,
                  ),
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
          height45,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: "First Name (Required)",
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
              decoration: InputDecoration(
                hintText: "Last Name (Optional)",
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
          AppButton(title: "Save"),
          height20,
        ],
      ),
    );
  }
}
