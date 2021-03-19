import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/btm_btn.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;

  ResultPage({this.result, this.bmi, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kValueTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kValueTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kValueTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: BtmBtn(
                  text: 'RE-CALCULATE',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ))
          ],
        ));
  }
}
