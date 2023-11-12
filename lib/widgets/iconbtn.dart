import 'package:flutter/material.dart';

class CustomIconBtn extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  const CustomIconBtn({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  State<CustomIconBtn> createState() => _CustomIconBtnState();
}

class _CustomIconBtnState extends State<CustomIconBtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: widget.onPressed,
          icon: Icon(widget.icon),
          iconSize: 100,
        ),
        const SizedBox(height: 20),
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
