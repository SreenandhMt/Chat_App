import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/fonts.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/features/settings/view_model/bloc/settings_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/size.dart';

PageController _pageController = PageController();
final _formKey = GlobalKey<FormState>();
final _pinController = TextEditingController(),
    _pinConformController = TextEditingController();

class AppLockSettings extends StatelessWidget {
  const AppLockSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Scaffold(
            appBar: AppBar(),
            body: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1),
                    Text('App Lock', style: AppFonts.titleFont(context)),
                    Spacer(flex: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LimitedBox(
                          maxWidth: 180,
                          child: TextFormField(
                            controller: _pinController,
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 5,
                              wordSpacing: 0,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Pin is required";
                              }
                              return null;
                            },
                            cursorColor: AppColors.primary(context),
                            cursorHeight: 0,
                            inputFormatters: [SixDigitFormatter()],
                            decoration: InputDecoration.collapsed(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none, gapPadding: 10),
                              hintMaxLines: 1,
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                letterSpacing: 8,
                                wordSpacing: 0,
                                color: AppColors.primary(context),
                              ),
                              hintText: "*** ***",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 180,
                      height: 3,
                      decoration: BoxDecoration(
                        color: AppColors.primary(context),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Spacer(flex: 10),
                    if (state.appLock != null)
                      Text(
                        "Forget Pin",
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary(context),
                        ),
                      ),
                    AppButton(
                      title: state.appLock != null ? "Conform" : "Next",
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) return;
                        if (state.appLock != null) {
                          if (state.appLock ==
                              int.parse(
                                  _pinController.text.replaceAll(" ", ""))) {
                            NavigationUtils.home(context);
                          }
                          return;
                        }
                        _pageController.jumpToPage(1);
                      },
                    ),
                    height20,
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1),
                    Text('Conform Pin', style: AppFonts.titleFont(context)),
                    Spacer(flex: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LimitedBox(
                          maxWidth: 180,
                          child: TextFormField(
                            controller: _pinConformController,
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 5,
                              wordSpacing: 0,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Pin is required";
                              }
                              if (value != _pinController.text) {
                                return "Pin not match";
                              }
                              return null;
                            },
                            cursorColor: AppColors.primary(context),
                            cursorHeight: 0,
                            inputFormatters: [SixDigitFormatter()],
                            decoration: InputDecoration.collapsed(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none, gapPadding: 10),
                              hintMaxLines: 1,
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                letterSpacing: 8,
                                wordSpacing: 0,
                                color: AppColors.primary(context),
                              ),
                              hintText: "*** ***",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 180,
                      height: 3,
                      decoration: BoxDecoration(
                        color: AppColors.primary(context),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Spacer(flex: 10),
                    // Text(
                    //   "Forget Pin",
                    //   style: GoogleFonts.quicksand(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w400,
                    //     color: AppColors.primary(context),
                    //   ),
                    // ),
                    AppButton(
                      title: LocaleData.continueText.getString(context),
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) return;
                        context.read<SettingsBloc>().add(
                            SettingsEvent.createAppLock(
                                pin: int.parse(_pinConformController.text
                                    .replaceAll(" ", ""))));
                        context.pop();
                      },
                    ),
                    height20,
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SixDigitFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String digitsOnly =
        newValue.text.replaceAll(RegExp(r'\D'), ''); // Remove non-digits
    if (digitsOnly.length > 6) {
      digitsOnly = digitsOnly.substring(0, 6); // Limit to 6 digits
    }

    String formatted = digitsOnly;
    if (digitsOnly.length > 3) {
      formatted = '${digitsOnly.substring(0, 3)} ${digitsOnly.substring(3)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
