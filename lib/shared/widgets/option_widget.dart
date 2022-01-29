import 'package:flutter/material.dart';

import '/../core.dart';

class OptionWidget extends StatelessWidget {
  final String state, detail;
  final bool enable;
  final Function()? onTap;

  const OptionWidget({
    Key? key,
    this.onTap,
    required this.state,
    required this.detail,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 150,
            decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 8,
                    spreadRadius: -8,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    state,
                    style: const TextStyle(
                        color: firstColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    detail,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: fourthColor,
              ),
              child: enable
                  ? const Center(
                      child: Icon(
                        Icons.done,
                        color: firstColor,
                      ),
                    )
                  : const SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
