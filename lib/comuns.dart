import 'package:flutter/material.dart';

Padding formFieldWithPadding(
  String hint,
  TextEditingController controller,
  bool? isObscured,
  bool? showIcon,
  IconData? icon,
  VoidCallback? function,
  TextInputType textType,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      textAlign: TextAlign.left,
      enableSuggestions: true,
      style: const TextStyle(
        color: Colors.white,
      ),
      autocorrect: true,
      cursorColor: Colors.pink,
      keyboardType: textType,
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        }
        return null;
      },
      obscureText: isObscured!,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: showIcon == false
            ? null
            : IconButton(
                onPressed: function,
                icon: Icon(
                  color: Colors.white,
                  icon,
                ),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

ElevatedButton buttonCustom(
  VoidCallback function,
) {
  return ElevatedButton(
    style: const ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(
        Colors.orange,
      ),
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 50,
        ),
      ),
    ),
    onPressed: function,
    child: const Text(
      'Entrar',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> scaffoldMessenger(
  BuildContext context,
  String text,
  Color color,
) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(text),
      backgroundColor: color,
    ),
  );
}
