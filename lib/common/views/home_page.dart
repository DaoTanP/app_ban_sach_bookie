import 'package:app_ban_sach_bookie/common/components/wrapper_component.dart';
import 'package:app_ban_sach_bookie/features/auth/views/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> iconButton = [
    const NavigationDestination(
      selectedIcon: Icon(Icons.home),
      icon: Icon(Icons.home_outlined),
      label: 'Trang chủ',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.people),
      icon: Icon(Icons.people_outlined),
      label: 'Tài khoản',
    ),
  ];

  final List<Widget> pageList = [
    const Center(child: Text('hello world')),
    const LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WrapperComponent(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Home'),
      trailing: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          tooltip: 'Thông báo',
          onPressed: () {
            // handle the press
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Giỏ hàng',
          onPressed: () {
            // handle the press
          },
        ),
      ],
      body: Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: pageList,
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: (index) =>
                setState(() => currentIndex = index),
            destinations: pageList,
          )),
    );
  }
}
