import 'package:bmi_calculator/core/model/person.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';
import 'package:bmi_calculator/features/calculator/presentation/widgets/gender_box.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key, required this.person});
  final Person person;
  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: [
        GenderBox(
            color: widget.person.isMale
                ? AppColours.accentColor
                : AppColours.secondaryColor,
            icon: Icons.male,
            text: "Male",
            onTap: () {
              setState(() {
                widget.person.isMale = true;
              });
            }),
        const SizedBox(
          width: 20,
        ),
        GenderBox(
            color: widget.person.isMale
                ? AppColours.secondaryColor
                : AppColours.accentColor,
            icon: Icons.female,
            text: "Female",
            onTap: () {
              setState(() {
                widget.person.isMale = false;
              });
            })
      ]),
    );
  }
}
