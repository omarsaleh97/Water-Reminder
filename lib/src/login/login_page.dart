import 'dart:html';

import 'package:flutter/material.dart';
import 'package:water_reminder/src/widgets/buttons/anonymous_SignIn_Button.dart';
import 'package:water_reminder/src/widgets/buttons/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
          ),
          appIcon(),
          smallTextSpace,
          title(textTheme),
          smallTextSpace,
          subtitle(textTheme),
          
          Expanded(
            child: Column(
              children: [
                GoogleSignInButton(),
                AnonymousSignInButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Text subtitle(TextTheme textTheme) {
    return Text(
          'We help you drink enough water',
          style: textTheme.subtitle2.copyWith(fontWeight: FontWeight.w400),
        );
  }

  Text title(TextTheme textTheme) {
    return Text(
      'Water reminder',
      style: textTheme.headline6.copyWith(fontSize: 24),
    );
  }

  Widget get smallTextSpace => SizedBox(height: 8);

  SizedBox appIcon() {
    return SizedBox(
      height: 150,
      width: 150,
      child: Placeholder(),
    );
  }
}



