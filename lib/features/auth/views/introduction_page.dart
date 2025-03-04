import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat_app/core/assets.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            AppAssets.introductionImage(context),
            height: 400,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              LocaleData.introductionDescription.getString(context),
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.outfit(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Spacer(),
          Text(
            "Terms & Privacy Policy",
            style: GoogleFonts.quicksand(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          height10,
          AppButton(
            title: LocaleData.introductionNextPageText.getString(context),
            onPressed: () => NavigationUtils.phoneVerificationPage(context),
          ),
          height20,
        ],
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
                onPressed: onPressed ?? () {},
                style: ButtonStyle(
                    shadowColor: WidgetStateColor.transparent,
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.primary(context)),
                    fixedSize:
                        WidgetStatePropertyAll(Size(double.infinity, 60))),
                child: Text(
                  title,
                  style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
