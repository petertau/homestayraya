import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
        actions: [
          IconButton(
              onPressed: _registrationForm,
              icon: const Icon(Icons.app_registration)),
              IconButton(onPressed: _loginForm, icon: const Icon(Icons.login)),
        ],
        
      ),
      body: const Center(child: Text("Main Screen")),
    );
  }

  void _registrationForm() {
    Navigator.push(context, MaterialPageRoute(builder: (content) => const RegistrationScreen()));
  }

  void _loginForm() {
    Navigator.push(context, MaterialPageRoute(builder: (content) => const LoginScreen()));
  }
}
