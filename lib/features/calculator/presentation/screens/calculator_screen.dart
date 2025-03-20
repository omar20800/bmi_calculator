import 'package:bmi_calculator/core/model/person.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/gender_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/height_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/weight_selector.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/age_selector.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/features/result/presentation/screens/result_page.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final Person person = Person();
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
              GenderSelector(
                person: person,
              ),
              const SizedBox(
                height: 20,
              ),
              HeightSelector(
                person: person,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    WeightSelector(
                      person: person,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    AgeSelector(
                      person: person,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'CALCULATE',
                onPressed: () async {
                  Person.bmiGet(person);
                  Person.bmiCheck(person);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                person: person,
                              )));
                },
              )
            ]))));
  }
}
