import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReferencesScreen extends StatefulWidget {
  const ReferencesScreen({super.key});

  @override
  State<ReferencesScreen> createState() => _ReferencesScreenState();
}

class _ReferencesScreenState extends State<ReferencesScreen> {
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
                  'Добавьте галлерею референсов',
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/card.svg'),
                          const SizedBox(width: 5),
                          SvgPicture.asset('assets/card.svg'),
                          const SizedBox(width: 5),
                          SvgPicture.asset('assets/card.svg'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SvgPicture.asset('assets/card.svg'),
                          const SizedBox(width: 5),
                          SvgPicture.asset('assets/card.svg'),
                          const SizedBox(width: 5),
                          SvgPicture.asset('assets/card.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,
                    '/'); // TODO(кнопка переводит на экран с описанием)
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
                Navigator.pushNamed(context, '/main_role');
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
