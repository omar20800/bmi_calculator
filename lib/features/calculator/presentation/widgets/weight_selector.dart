import 'package:bmi_calculator/core/model/person.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key, required this.person});
  final Person person;

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
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
            "Weight",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.person.weight.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    widget.person.weight--;
                  });
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
                  setState(() {
                    widget.person.weight++;
                  });
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
