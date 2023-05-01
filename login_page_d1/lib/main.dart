import 'package:flutter/material.dart';
import 'package:login_page_d1/widgets/loginPage_body.dart';

void main() {
  runApp(const LoginPageUI());
}

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPageBody(),
    );
  }
}
