import "package:flutter/material.dart";

//Button widget for form fields
class AppButton extends StatelessWidget{
  final String text;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final double verticalPadding;
  final bool Bold;

  const AppButton({
    super.key,
    required this.text, 
    this.onPressed, 
    this.horizontalPadding  = 0, 
    this.verticalPadding = 0,
    this.Bold = false,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed, 
        style : ElevatedButton.styleFrom(
          
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding,
          ),
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(45) ),
        ),
        child: Text(text, 
        style: TextStyle(
          fontSize: 16,
        fontWeight: Bold ? FontWeight.bold : FontWeight.normal),
        )),

        
    );
  }

}

// label widget for form fields
class Label extends StatelessWidget {
  final String text;
  final double fontSize;

  
  const Label({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}