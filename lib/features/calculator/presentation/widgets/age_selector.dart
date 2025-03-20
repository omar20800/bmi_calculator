import 'package:bmi_calculator/core/model/person.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';

class AgeSelector extends StatefulWidget {
  const AgeSelector({super.key, required this.person});
  final Person person;

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColours.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text(
            "Age",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.person.age.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  if (widget.person.age > 20) {
                    setState(() {
                      widget.person.age--;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    color: AppColours.greyColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  if (widget.person.age < 120) {
                    setState(() {
                      widget.person.age++;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    color: AppColours.greyColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
