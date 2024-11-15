import 'package:flutter/material.dart';

Padding formFieldWithPadding(
  String hint,
  TextEditingController controller,
  bool? isObscured,
  bool? showIcon,
  IconData? icon,
  VoidCallback? function,
) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: TextFormField(
      obscureText: isObscured!,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: showIcon == false
            ? null
            : IconButton(
                onPressed: function,
                icon: Icon(
                  icon,
                ),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hint,
      ),
    ),
  );
}
