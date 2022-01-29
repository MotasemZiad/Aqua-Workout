import 'package:flutter/material.dart';

import '../../core.dart';

class ColumnButtons extends StatelessWidget {
  const ColumnButtons({
    Key? key,
    required this.label1,
    required this.label2,
    this.onPressed1,
    this.onPressed2,
  }) : super(key: key);
  final String label1;
  final String label2;
  final Function()? onPressed1;
  final Function()? onPressed2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            label: label1,
            onPressed: onPressed1!,
            backgroundColor: firstColor,
          ),
          CustomButton(
            label: label2,
            onPressed: onPressed2!,
            backgroundColor: Colors.transparent,
            border: Border.all(width: 1, color: firstColor),
          ),
        ],
      ),
    );
  }
}
