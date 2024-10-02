import 'package:flutter/material.dart';
import 'theme.dart';
import 'home_page.dart';

void main() {
  runApp(MyBankingApp());
}

class MyBankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: buildAppTheme(),
      home: BankingHomePage(),
    );
  }
}
