import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obsureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                'Авторизация',
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
              InkWell(
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.pushNamed(context,
                      '/') // TODO(переход на другую страницу, а так же проверку данных)
                },
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF2660),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/restore_password'),
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 198),
              Text(
                'Нет аккаунта?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, '/register')},
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFF0F2F4),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Зарегистрироваться',
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
