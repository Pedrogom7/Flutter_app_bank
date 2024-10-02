import 'package:flutter/material.dart';
import 'screens/banking_form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF820AD1), // Cor roxa do Nubank
        scaffoldBackgroundColor: const Color(0xFF121212), // Fundo escuro
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF820AD1),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF820AD1), // Cor do botão
            foregroundColor: Colors.white, // Cor do texto no botão
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF2C2C2C),
          labelStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const BankingFormScreen(),
    );
  }
}
