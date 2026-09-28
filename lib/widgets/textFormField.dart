
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../helpers/colors.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final IconData? prefixIcon;
  final Color BorderColor;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final int maxLines;

  const AppTextField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.BorderColor = const Color.fromARGB(255, 222, 224, 226),
    this.controller,
    this.onChanged,
    this.validator,
    this.maxLines = 1,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      keyboardType: widget.keyboardType,
      maxLines: widget.obscureText ? 1 : widget.maxLines,
      onChanged: widget.onChanged,
      validator: widget.validator,

      style: theme.textTheme.bodyMedium,

      decoration: InputDecoration(
        // Normal placeholder inside the field
        hintText: widget.hint,

        // No labelText, so nothing floats to the top

        prefixIcon: widget.prefixIcon != null
            ? Icon(widget.prefixIcon)
            : null,

        // Only show eye button for password fields
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Primary,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        filled: true,

        fillColor: theme.colorScheme.surfaceVariant.withOpacity(0.3),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

