import 'package:chat/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2),
              SvgPicture.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? "assets/icons/Logo_dark_theme.svg"
                    : "assets/icons/Logo_light_theme.svg",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () {},
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: kSecondaryColor,
                text: "Sign Up",
                press: () {},
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
