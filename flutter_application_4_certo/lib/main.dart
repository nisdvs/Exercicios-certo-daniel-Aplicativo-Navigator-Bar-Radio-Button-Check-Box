import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TrianguloScreen()));
          },
          child: Text('Entrar'),
        ),
      ),
    );
  }
}

class TrianguloScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Área do Triângulo')),
      body: Center(
        child: Text('Tela de cálculo da área do triângulo'),
      ),
    );
  }
}

class TrapezioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Área do Trapézio')),
      body: Center(
        child: Text('Tela de cálculo da área do trapézio'),
      ),
    );
  }
}

class OhmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1ª Lei de Ohm')),
      body: Center(
        child: Text('Tela de aplicação da 1ª Lei de Ohm'),
      ),
    );
  }
}
