import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/error_snackbar.dart';
import 'package:chat_app/core/loading.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/auth/view_models/bloc/auth_bloc.dart';
import 'package:chat_app/features/auth/views/introduction_page.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/auth/country_code_picker.dart';

TextEditingController _controller = TextEditingController(text: "7012123029");
String _code = "+91";

class NumberVerificationPage extends StatelessWidget {
  const NumberVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (ctx, state) {
        if (state.errorMessage != null) {
          showExpandableSnackBar(context, state.errorMessage!.message,
              state.errorMessage!.details, state.errorMessage!.code);
          context.read<AuthBloc>().add(AuthEvent.resetErrorMessage());
        }
        if (state.phoneNumberSuccess) {
          NavigationUtils.otpVerificationPage(context);
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return AppLoadingWidget();
        }
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(double.infinity, 50),
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.paddingOf(context).top + 10),
                child: Row(
                  children: [
                    width15,
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ],
                ),
              )),
          body: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                LocaleData.loginTitleText.getString(context),
                style: GoogleFonts.outfit(
                    fontSize: 29, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  LocaleData.loginDescriptionText.getString(context),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              height25,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    width10,
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.grey(context),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountryCodePicker(
                            onCountrySelected: (name, code, flagUrl) {
                              _code = code;
                            },
                          ),
                        ],
                      ),
                    ),
                    width5,
                    Expanded(
                        child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText:
                              LocaleData.loginPhoneNumberHit.getString(context),
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
                    )),
                    width10
                  ],
                ),
              ),
              Spacer(),
              AppButton(
                  title: LocaleData.continueText.getString(context),
                  onPressed: () {
                    context.read<AuthBloc>().add(
                          AuthEvent.signinWithPhoneNumber(
                              '$_code ${_controller.text}'),
                        );
                  }),
              height20,
            ],
          ),
        );
      },
    );
  }
}
