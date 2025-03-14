import 'package:chat_app/features/auth/view_models/bloc/auth_bloc.dart';
import 'package:chat_app/localization/locals.dart';
import 'package:chat_app/route/auth_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../../core/size.dart';

String value = "";

final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.optSuccess) {
          AuthChecker.checkAuth(context);
        }
      },
      child: Form(
        key: _formKey,
        child: Scaffold(
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
                LocaleData.oTPVerificationTitleText.getString(context),
                style: GoogleFonts.outfit(
                    fontSize: 29, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  LocaleData.oTPVerificationDescriptionText.getString(context),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              height25,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  spacing: 10,
                  children: List.generate(
                      6,
                      (index) => Expanded(
                          flex: 1,
                          child: OTPInput(
                            index: index,
                          ))),
                ),
              ),
              Spacer(),
              Text(
                LocaleData.resetOTPText.getString(context),
                style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary(context),
                ),
              ),
              height20,
            ],
          ),
        ),
      ),
    );
  }
}

class OTPInput extends StatefulWidget {
  const OTPInput({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNodes[widget.index],
      onChanged: (value) {
        if (value.isEmpty) {
          isActive = false;
          if (widget.index > 0) {
            _focusNodes[widget.index - 1].requestFocus();
          }
        } else {
          value = value + value;
          isActive = true;
          if (widget.index < 5) {
            _focusNodes[widget.index + 1].requestFocus();
          }
          if (widget.index >= 5 && _formKey.currentState!.validate()) {
            context.read<AuthBloc>().add(AuthEvent.verifyOTP(value));
          }
        }
        setState(() {});
      },
      style: GoogleFonts.workSans(fontSize: 40, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      validator: (value) => null,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: isActive
              ? null
              : Icon(Icons.circle, color: AppColors.grey(context), size: 40),
          prefixIconConstraints: BoxConstraints(minWidth: double.infinity)),
    );
  }
}
