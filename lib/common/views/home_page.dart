import 'dart:math';

import 'package:app_ban_sach_bookie/common/components/book_section_component.dart';
import 'package:app_ban_sach_bookie/common/components/nav_bar_component.dart';
import 'package:app_ban_sach_bookie/common/components/wrapper_component.dart';
import 'package:app_ban_sach_bookie/features/auth/views/login_page.dart';
import 'package:app_ban_sach_bookie/features/product/views/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperComponent(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        'Bookie',
        style: TextStyle(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
      ),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.people),
          tooltip: 'Tài khoản',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 2),
                ),
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: IconButton(
                  onPressed: () {
                    // Toggle logic to show/hide password
                  },
                  icon: Icon(Icons.cancel_outlined),
                ),
              ),
            ),
          ),
          const Image(
            height: 200,
            image: NetworkImage('https://placehold.co/600x400.png'),
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Wrap(
              spacing: 16,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Button(icon: Icon(Icons.image), onPressed: () {}),
                Button(icon: Icon(Icons.image), onPressed: () {}),
                Button(icon: Icon(Icons.image), onPressed: () {}),
                Button(icon: Icon(Icons.image), onPressed: () {}),
                Button(icon: Icon(Icons.image), onPressed: () {}),
                Button(icon: Icon(Icons.image), onPressed: () {}),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: BookSectionComponent(),
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Icon icon;
  final Function() onPressed;
  const Button({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: MediaQuery.of(context).size.width * 0.1,
      icon: icon,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(4)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black26, width: 2),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
