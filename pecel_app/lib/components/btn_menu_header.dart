import 'package:flutter/material.dart';

class BtnMenuHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double width;

  const BtnMenuHeader({
    Key? key,
    required this.title,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        padding: EdgeInsets.symmetric(horizontal: width),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: backgroundColor != null ? Colors.white : Colors.green,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: backgroundColor != null ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
