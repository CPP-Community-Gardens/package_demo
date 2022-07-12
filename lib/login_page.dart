import 'package:flutter/material.dart';
import 'package:login_widget/login_field_widget.dart';
import 'package:login_widget/login_form_widget.dart';
import 'package:login_widget/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          child: LoginWidget(
            loginButtonText: 'Log in',
            onSubmit: () {
              return null;
            },
            form: LoginFormWidget(
              formKey: _formKey,
              loginFields: [
                LoginFieldWidget(
                  controller: _usernameController,
                  hintText: 'Username',
                ),
                LoginFieldWidget(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
