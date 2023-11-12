import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
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
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Số điện thoại/Tên đăng nhập',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.account_circle), // Icon tài khoản
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock), // Icon mật khẩu
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
        SizedBox(height: 10), // Khoảng cách giữa ô mật khẩu và "Quên mật khẩu"
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào chữ "Quên mật khẩu"
              },
              child: Text(
                'Quên mật khẩu',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
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
                child: Text('Đăng nhập'),
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // Khoảng cách giữa ô mật khẩu và "Đăng nhập SMS"
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào chữ "Đăng nhập SMS"
              },
              child: Text(
                'Đăng nhập SMS',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Xử lý đăng nhập bằng Facebook
              },
              icon: Icon(Icons.facebook), // Biểu tượng Facebook
              label: Text('Đăng nhập bằng Facebook'),
            ),
            SizedBox(width: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Xử lý đăng nhập bằng Google
              },
              icon: Icon(Icons.g_mobiledata), // Biểu tượng Google
              label: Text('Đăng nhập bằng Google'),
            ),
          ],
        ),
        SizedBox(height: 20),

        Divider(
          color: Colors.black,
          height: 2,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bạn chưa có tài khoản? ',
              style: TextStyle(color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào chữ "Đăng ký"
              },
              child: Text(
                'Đăng ký',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
