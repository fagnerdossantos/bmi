import 'package:flutter/material.dart';

class TextNavigation extends StatelessWidget {
  final String rout, label;
  final IconData icon;
  const TextNavigation({
    super.key,
    required this.rout,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => Navigator.pushNamed(context, rout),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
