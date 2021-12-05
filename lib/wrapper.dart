import 'package:flutter/material.dart';
import 'package:proba_bpt/loginscreen.dart';

import 'home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: LoginScreen(),
    );
    // return either Home or Login screen

  }
}
