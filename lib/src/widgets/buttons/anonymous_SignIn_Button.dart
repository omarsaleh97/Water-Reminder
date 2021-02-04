import 'package:flutter/material.dart';

class AnonymousSignInButton extends StatelessWidget {
  const AnonymousSignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ButtonTheme(
            minWidth: 224,
            child: FlatButton(
              onPressed: (){},
              child: Text('Google Sign in'),
            ),
          )
        ],
      ),
    );
  }
}
