import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title, date;
  const TextWidget({Key? key, required this.date, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 15)),
          Text(
            date,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
