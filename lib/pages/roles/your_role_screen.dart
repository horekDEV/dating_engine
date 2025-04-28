import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YourRoleScreen extends StatefulWidget {
  const YourRoleScreen({super.key});

  @override
  State<YourRoleScreen> createState() => _YourRoleScreenState();
}

class _YourRoleScreenState extends State<YourRoleScreen> {
  var selectedRole =
      ""; // TODO(доделать структуру передачи выбранного элемента)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 68),
            SvgPicture.asset('assets/statusImages/statusFive.svg'),
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Вы - Заказчик',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 268),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/acceptImage.svg",
                        width: 24,
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'находите лучших специалистов\nи сохраняйте контакт для\nэффективного сотрудничества',
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/acceptImage.svg",
                        width: 24,
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'делитесь информацией о компании\nи команде, чтобы повысить\nлояльность у спеуиалистов',
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/acceptImage.svg",
                        width: 24,
                        height: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'объединяйтесь с экспертами в своей\nнише и усиливайте команду',
                          style: TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 46),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tell_about_you');
              },
              child: Container(
                width: 343,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF2660),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Center(
                  child: Text(
                    'Продолжить',
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
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/select_role');
              },
              child: Container(
                width: 343,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Center(
                  child: Text(
                    'Назад',
                    style: TextStyle(
                      color: Color(0xFF7C8591),
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
    );
  }
}
