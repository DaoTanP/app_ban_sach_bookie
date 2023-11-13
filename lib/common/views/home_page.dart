import 'package:app_ban_sach_bookie/common/components/wrapper_component.dart';
import 'package:app_ban_sach_bookie/features/product/views/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperComponent(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Home'),
      body: const Center(
        child: Text('Greetings from the HomePage widget'),
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
                MaterialPageRoute(builder: (context) => Cart_page()),
            );
          },
        ),
      ],
    );
  }
}
