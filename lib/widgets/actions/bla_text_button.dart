import 'package:blabla_car/theme/theme.dart';
import 'package:flutter/material.dart';

class BlaTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const BlaTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Render the button
    return SizedBox(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: onPressed,
            child: Text(text,
                style: BlaTextStyles.button.copyWith(color: BlaColors.primary))),
      ),
    );
  }
}