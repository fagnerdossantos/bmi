import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function() callBack;
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: callBack,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
