import 'package:bmi_calculator/core/model/person.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/features/result/presentation/widgets/result_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.person,
  });
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR',
            style: TextStyle(
                color: AppColours.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: AppColours.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Your Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              ResultCard(
                  status: person.status,
                  bmi: person.bmi,
                  message: Person.resultMessage(person)),
              CustomButton(
                text: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
