import 'package:flutter/material.dart';

class Card_Container extends StatelessWidget {
  const Card_Container(
      {super.key,
      required this.height,
      required this.isDarkMode,
      required this.colorlight,
      required this.colorDark,
      this.child});
  final double height;
  final bool isDarkMode;
  final Color colorlight;
  final Color colorDark;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 360,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 3.5),
                color: Colors.grey,
                blurRadius: 9,
                spreadRadius: 1)
          ],
          color: isDarkMode ? colorDark : colorlight,
          borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}

class detailWidget extends StatelessWidget {
  const detailWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.number,
    required this.unit,
    required this.color,
    required this.iconColor,
    required this.borderColor,
  });
  final IconData icon;
  final String title;
  final String unit;
  final int number;
  final Color color;
  final Color iconColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(15),
      width: 100,
      height: 130,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          Row(
            children: [
              Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
