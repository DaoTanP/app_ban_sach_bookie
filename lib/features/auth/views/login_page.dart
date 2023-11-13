
import 'dart:io';

import 'package:app_ban_sach_bookie/features/auth/views/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đăng nhập',
          style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LoginBody(), // Sử dụng widget tạo nội dung đăng nhập
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Số điện thoại/Tên đăng nhập',
                  border: OutlineInputBorder(), // Icon tài khoản
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.lock,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),// Icon mật khẩu
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Toggle logic to show/hide password
                    },
                    icon: Icon(Icons
                        .visibility), // Hiển thị biểu tượng để show/hide mật khẩu
                  ),
                ),
                obscureText: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // Khoảng cách giữa ô mật khẩu và "Quên mật khẩu"
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Text(
                  'Quên mật khẩu ?',
                  style: TextStyle(
                      color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý đăng nhập
                },
                style: ButtonStyle(
                  // backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20), // Khoảng cách giữa ô mật khẩu và "Đăng nhập SMS"
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Text(
                  'Đăng nhập SMS',
                  style: TextStyle(
                      color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Hoặc'),
            ),
            Expanded(
              child: Divider(color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Xử lý đăng nhập bằng Facebook
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                  ),
                ),
              ),
              icon: Icon(Icons.facebook), // Biểu tượng Facebook
              label: Text('Facebook'),
            ),
            SizedBox(width: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Xử lý đăng nhập bằng Google
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                  ),
                ),
              ),
              icon: Icon(Icons.g_mobiledata), // Biểu tượng Google
              label: Text('Google'),
            ),
            SizedBox(width: 50),
            ElevatedButton.icon(
              onPressed: () {
                // Xử lý đăng ký bằng Apple
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                  ),
                ),
              ),
              icon: Icon(Icons.apple), 
              label: Text('Apple'),
            ),
          ],
        ),
        SizedBox(height: 50),

        Divider(
          // thickness: 2,
          color: Colors.black,
          height: 2,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bạn chưa có tài khoản? ',
              style: TextStyle(color: Colors.black,),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),// Xử lý khi nhấn vào chữ "Đăng ký"
                  );
                },
                child: Text(
                  'Đăng ký',
                  style: TextStyle(
                      color: Colors.black, 
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}