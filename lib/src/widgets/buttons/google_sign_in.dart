import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 24,
      height: 48,
      child: FlatButton(
        onPressed: (){},
        child: Text("Google Sign in"),
      ),
    );
  }
}