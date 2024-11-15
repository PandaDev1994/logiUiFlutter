import 'package:flutter/material.dart';
import 'package:tela_login_flutter/comuns.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

bool isObscured = true;

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formFieldWithPadding(
              'Login',
              nameController,
              false,
              false,
              null,
              null,
            ),
            formFieldWithPadding(
              'Senha',
              passController,
              isObscured,
              true,
              isObscured ? Icons.visibility_off : Icons.visibility,
              () {
                setState(() {
                  isObscured = !isObscured;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
