import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.unit,
    required this.color,
    required this.colorIcon,
    required this.borderColor,
  });
  final IconData iconData;
  final String title;
  final String subTitle;
  final String unit;
  final Color color;
  final Color colorIcon;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 130,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: borderColor,
              spreadRadius: 3,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Spacer(
            flex: 1,
          ),
          Icon(
            iconData,
            color: colorIcon,
          ),
          const Spacer(
            flex: 6,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 22),
          ),
          Row(
            children: [
              Text(
                subTitle,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                unit,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
