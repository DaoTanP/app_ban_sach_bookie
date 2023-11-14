import 'dart:io';
import 'dart:js_util';
import 'package:app_ban_sach_bookie/features/product/views/book_details_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giỏ Hàng',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_note),
            tooltip: 'Sửa',
            onPressed: () {}
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline_rounded),
            tooltip: 'mess',
            onPressed: () {}
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: CartBody(),
      ),
    );
  }
}
class CartBody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: () {}
              ),
              Image.network('https://www.ucheba.ru/pix/logo_cache/21343.upto100x100.png'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Đắc Nhân Tâm'),
                  SizedBox(height: 10),
                    Text(
                      '57.620đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                        ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     SizedBox(width: 5),
                     SizedBox(
                      width: 40,
                      height: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                     ),
                     SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            
          ),
          ),
          ),
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: () {}
              ),
              Image.network('https://www.ucheba.ru/pix/logo_cache/21343.upto100x100.png'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Đắc Nhân Tâm'),
                  SizedBox(height: 10),
                    Text(
                      '57.620đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                        ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     SizedBox(width: 5),
                     SizedBox(
                      width: 40,
                      height: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                     ),
                     SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            
          ),
          ),
          ),
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: () {}
              ),
              Image.network('https://www.ucheba.ru/pix/logo_cache/21343.upto100x100.png'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Đắc Nhân Tâm'),
                  SizedBox(height: 10),
                    Text(
                      '57.620đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                        ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     SizedBox(width: 5),
                     SizedBox(
                      width: 40,
                      height: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                     ),
                     SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            
          ),
          ),
          ),
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: () {}
              ),
              Image.network('https://www.ucheba.ru/pix/logo_cache/21343.upto100x100.png'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Đắc Nhân Tâm'),
                  SizedBox(height: 10),
                    Text(
                      '57.620đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                        ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     SizedBox(width: 5),
                     SizedBox(
                      width: 40,
                      height: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                     ),
                     SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            
          ),
          ),
          ),
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: () {}
              ),
              Image.network('https://www.ucheba.ru/pix/logo_cache/21343.upto100x100.png'),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Đắc Nhân Tâm'),
                  SizedBox(height: 10),
                    Text(
                      '57.620đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                        ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                     SizedBox(width: 5),
                     SizedBox(
                      width: 40,
                      height: 30,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                     ),
                     SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(10, 20)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            
          ),
          ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
        child:Container(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton( 
                  icon: const Icon(Icons.check_box_outline_blank),
                  onPressed: () {}
                ),
                SizedBox(width:5 ),
                Text('Tất cả'),
                SizedBox(width:20 ),
                Column(
                  children: [
                    Text('Tổng Thanh Toán:'),
                    Text(
                      '0đ',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width:10 ),
                 ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Mua hàng',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
              ],
            ),
          ),
          ),
        ),
      ),
      ],
    );
  }
}
