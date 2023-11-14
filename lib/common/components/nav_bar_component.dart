import 'package:app_ban_sach_bookie/common/views/home_page.dart';
import 'package:app_ban_sach_bookie/features/auth/views/login_page.dart';
import 'package:flutter/material.dart';

class NavBarComponent extends StatelessWidget {
  int currentIndex = 0;
  final List<Widget> pageList = [const HomePage(), const LoginPage()];

  NavBarComponent({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
      ],
      onTap: (index) => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageList[index]),
        )
      },
    );
  }
}
