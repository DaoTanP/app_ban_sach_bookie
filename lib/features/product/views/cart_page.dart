import 'dart:io';
import 'dart:js_util';
import 'package:app_ban_sach_bookie/features/product/views/book_details_page.dart';
import 'package:flutter/material.dart';

class Cart_page extends StatelessWidget {
  const Cart_page({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giỏ Hàng',
          style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
      ),
    );
  }
}
