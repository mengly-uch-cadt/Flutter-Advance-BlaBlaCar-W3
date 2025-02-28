import 'package:blabla_car/theme/theme.dart';
import 'package:flutter/material.dart';

class BlaButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final IconData? icon;
  final bool isIconRight;
  final double? fontSize;
  final double? padding;
  final bool isOutlined;

  const BlaButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.icon,
    this.isIconRight = false,
    this.fontSize,
    this.padding,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined ? BlaColors.transparent : (backgroundColor ?? BlaColors.blue),
          foregroundColor: textColor ?? BlaColors.white,
          padding: EdgeInsets.symmetric(vertical: padding ?? 12, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: isOutlined ? BorderSide(color: borderColor ?? BlaColors.blue) : BorderSide.none,
          ),
          elevation: isOutlined ? 0 : 2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null && !isIconRight) Icon(icon, size: 20, color: textColor ?? BlaColors.white),
            if (icon != null && !isIconRight) SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(fontSize: fontSize ?? 16, fontWeight: FontWeight.bold, color: textColor ?? BlaColors.white),
            ),
            if (icon != null && isIconRight) SizedBox(width: 8),
            if (icon != null && isIconRight) Icon(icon, size: 20, color: textColor ?? BlaColors.white),
          ],
        ),
      ),
    );
  }
}