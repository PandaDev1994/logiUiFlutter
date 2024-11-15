import 'package:flutter/material.dart';
import 'package:tela_login_flutter/comuns.dart';
import 'package:tela_login_flutter/menu/menu.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

const String login = 'Alexandre';
const String pass = '123456';

TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

bool isObscured = true;

final key = GlobalKey<FormState>();

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black54,
              Colors.black12,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Form(
          key: key,
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
                TextInputType.text,
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
                TextInputType.text,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              buttonCustom(() {
                if (key.currentState!.validate()) {
                  if (login == nameController.text &&
                      pass == passController.text) {
                    scaffoldMessenger(
                      context,
                      'Bem-vindo',
                      Colors.green,
                    );

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const Menu(),
                      ),
                    );
                  } else {
                    scaffoldMessenger(
                      context,
                      'Login ou senha incorretos',
                      Colors.red,
                    );
                  }
                } else {
                  scaffoldMessenger(
                    context,
                    'Por favor revise os campos',
                    Colors.red,
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
