import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart';

class Logintext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Image.asset('assets/images/logo.png'))
        ]));
  }
}
