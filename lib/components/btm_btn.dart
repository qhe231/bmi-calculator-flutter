import 'package:flutter/material.dart';

import '../constants.dart';

class BtmBtn extends StatelessWidget {
  final String text;
  final Function onTap;

  BtmBtn({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBtmContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBtmContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyre,
          ),
        ),
      ),
    );
  }
}
