import 'package:flutter/material.dart';

class RestorePasswordScreen extends StatefulWidget {
  const RestorePasswordScreen({super.key});

  @override
  State<RestorePasswordScreen> createState() => _RestorePasswordScreenState();
}

class _RestorePasswordScreenState extends State<RestorePasswordScreen> {
  final _emailController = TextEditingController();

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
                'Восстановить доступ',
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
                    'Введите email',
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
                        hintText: 'ivan@email.com',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, '/new_password')},
                child: Container(
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF2660),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Center(
                    child: Text(
                      'Сбросить пароль',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 356),
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
                      'Вернуться к Авторизации',
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
