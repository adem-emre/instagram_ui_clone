import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  final int quantity;
  final String label;
  const ProfileInfoItem({
    Key? key,
    required this.quantity,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: quantity.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: "\n$label")
      ]),
      textAlign: TextAlign.center,
    );
  }
}
