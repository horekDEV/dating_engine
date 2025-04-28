import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({super.key});

  @override
  State<SelectRoleScreen> createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
  String? selectedRole;

  void selectRole(String role) {
    setState(() {
      selectedRole = role;
    });
  }

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
                  'Выберите роль',
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
                InkWell(
                  onTap: () => selectRole('Заказчик'),
                  child: Container(
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        color: selectedRole == 'Заказчик'
                            ? const Color(0xFFFF2660)
                            : Colors.black,
                        width: 1.0,
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Заказчик",
                        style: TextStyle(
                          fontSize: 18,
                          color: selectedRole == 'Заказчик'
                              ? const Color(0xFFFF2660)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () => selectRole('Специалист'),
                  child: Container(
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        color: selectedRole == 'Специалист'
                            ? const Color(0xFFFF2660)
                            : Colors.black,
                        width: 1.0,
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Специалист",
                        style: TextStyle(
                          fontSize: 18,
                          color: selectedRole == 'Специалист'
                              ? const Color(0xFFFF2660)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            InkWell(
              onTap: () {
                if (selectedRole != null) {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/your_role');
                }
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
