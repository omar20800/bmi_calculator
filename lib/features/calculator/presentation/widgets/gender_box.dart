import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/colours/app_colours.dart';

class GenderBox extends StatelessWidget {
  const GenderBox(
      {super.key,
      required this.icon,
      required this.text,
      required this.onTap,
      required this.color});
  final IconData icon;
  final String text;
  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: AppColours.whiteColor,
                  size: 100,
                ),
                Expanded(child: Container()),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
