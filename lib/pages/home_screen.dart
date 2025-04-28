import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/main_background.png', // Картинка в SMM Dating, будет меняться рандомно, в остальных приложениях, остается неизменной
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'SMM Dating',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Объединяем специалистов\nи бизнес для эффективного\nвзаимодействия',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // эти кнопки остаются неизменными во всех дизайнах, ИХ НЕ ТРОГАТЬ!
                Column(
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/login')
                      },
                      child: Container(
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF2B2B2B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: Center(
                          child: Text(
                            'Вход',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () => {
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/register')
                      },
                      child: Container(
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFF0F2F4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: Center(
                          child: Text(
                            'Регистрация',
                            style: TextStyle(
                              color: Color(0xFF2B2B2B),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
