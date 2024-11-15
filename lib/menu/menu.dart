import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Menu',
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Menu'),
      ),
    );
  }
}
