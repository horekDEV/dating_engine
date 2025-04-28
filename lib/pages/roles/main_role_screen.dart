import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainRoleScreen extends StatefulWidget {
  const MainRoleScreen({super.key});

  @override
  State<MainRoleScreen> createState() => _MainRoleScreenState();
}

class _MainRoleScreenState extends State<MainRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 68),
            SvgPicture.asset('assets/statusImages/statusFive.svg'),
            const SizedBox(height: 60),
            Image.asset(
                'assets/mainRoleImage.png'), // картинка будет меняться взависимости от приложения
            const SizedBox(height: 70),
            Text(
              'Здесь SMM-специалисты\nи бизнес находят друг друга.\nНачни строить полезные\nсвязи уже сегодня!',
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 84),
            InkWell(
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/select_role')
              },
              child: Container(
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFFF2660),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Center(
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
          ],
        ),
      ),
    );
  }
}
