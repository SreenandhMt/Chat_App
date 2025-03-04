import 'package:chat_app/core/assets.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            height20,
            Image.asset(
              AppAssets.logo(context),
              fit: BoxFit.cover,
              width: 200,
              height: 90,
            ),
            Text(
              "CometChat v1.0",
              style: AppFonts.titleFont(context),
            ),
            height40,
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.termsAndConditionText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.jobVacancyText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.partnersText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.contactUsText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.feedbackText.toLowerCase(),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.rateUsText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.visitWebsiteText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  LocaleData.followSocialMediaText.getString(context),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 20),
                onTap: () {
                  //!all are in website
                },
              ),
            ),
            height50,
          ],
        ),
      ),
    );
  }
}
