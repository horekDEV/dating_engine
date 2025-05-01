import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordTwoController = TextEditingController();
  bool _obsureText = true;

  Future<bool?>? validateEmail(String email) {
    final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

    if (email.isEmpty) {
      return Fluttertoast.showToast(
          msg: "Введите email!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else if (emailRegex.hasMatch(email)) {
      return Fluttertoast.showToast(
          msg: "Введите свой email корректно!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else {
      return null;
    }
  }

  Future<bool?>? validatePassword(String password) {
    if (password.length < 8) {
      return Fluttertoast.showToast(
          msg: "В вашем пароле должно быть минимум 8 символов!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else if (password.contains(RegExp(r'[A-Z]'))) {
      return Fluttertoast.showToast(
          msg: "Введите хотя бы одну заглавную букву!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else if (password.contains(RegExp(r'[a-z]'))) {
      return Fluttertoast.showToast(
          msg: "Введите хотя бы одну строчную букву!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else if (password.contains(RegExp(r'[0-9]'))) {
      return Fluttertoast.showToast(
          msg: "В вашем пароле должна быть хотя бы одна цифра!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else if (password.contains(RegExp(r'[^A-Za-z0-9]'))) {
      return Fluttertoast.showToast(
          msg: "В вашем пароле должен быть специальный символ!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          constraints: BoxConstraints(maxWidth: 348),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Регистрация',
                style: TextStyle(
                  color: Color(0xFF2B2B2B),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ваш email',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F2F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        hintText: 'Введите Email',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ваш пароль',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F2F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obsureText,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 16, right: 40),
                            hintText: 'Введите пароль',
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 8,
                          child: GestureDetector(
                            onTap: () {
                              _obsureText = false;
                            },
                            child: SvgPicture.asset(
                              'assets/eye.svg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Повторите ваш пароль',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F2F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: _passwordTwoController,
                          obscureText: _obsureText,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 16, right: 40),
                            hintText: 'Введите пароль',
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 8,
                          child: GestureDetector(
                            onTap: () {
                              _obsureText = false;
                            },
                            child: SvgPicture.asset(
                              'assets/eye.svg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () => {
                  if (validateEmail(_emailController.text) == null ||
                      validatePassword(_passwordController.text) == null)
                    {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, '/main_role')
                    }
                },
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF2660),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 198),
              Text(
                'Уже зарегистрированны?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, '/login')},
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF0F2F4),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Color(0xFF2B2B2B),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
