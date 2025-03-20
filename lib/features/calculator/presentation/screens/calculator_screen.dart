import 'package:bmi_calculator/core/methods/result_message.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/gender_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/height_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/weight_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/age_selector.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/features/result/presentation/screens/result_page.dart';
import 'package:bmi_calculator/core/methods/bmi_get.dart';
import 'package:bmi_calculator/core/methods/bmi_check.dart';
import 'package:bmi_calculator/globals.dart' as globals;

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});
  double bmi = 0;
  String status = '';
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColours.primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI Calculator',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          backgroundColor: AppColours.primaryColor,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(children: [
              GenderSelector(),
              SizedBox(
                height: 20,
              ),
              HeightSelector(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    WeightSelector(),
                    SizedBox(
                      width: 20,
                    ),
                    AgeSelector(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'CALCULATE',
                onPressed: () {
                  widget.bmi = bmi_get(globals.height, globals.weight);
                  widget.status = bmiCheck(
                    bmi: widget.bmi,
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmi: widget.bmi,
                                status: widget.status,
                                message: resultMessage(status: widget.status),
                              )));
                },
              )
            ]))));
  }
}
