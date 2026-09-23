import "package:flutter/material.dart";


class AppButton extends StatelessWidget{
  final String text;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final double verticalPadding;

  const AppButton({
    super.key,
    required this.text, 
    this.onPressed, 
    this.horizontalPadding  = 0, 
    this.verticalPadding = 0
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style : ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding)
      ),
      child: Text(text),
      );
  }

}