import 'package:app_ban_sach_bookie/features/auth/views/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đăng ký',
          style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold,),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SignupBody(), // Sử dụng widget tạo nội dung đăng nhập
      ),
    );
  }
}

class SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          type: StepperType.horizontal,
          steps: <Step> [
            Step(
              title: Text('Screen 1'),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Số điện thoại/Tên đăng nhập',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_circle),
                      // Biểu tượng ẩn/ hiển thị 
                      suffixIcon: IconButton(
                        onPressed: () {
                          //Xử lý ẩn/ hiển thị 
                        },
                        icon: Icon(Icons
                            .visibility),
                      ), 
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Xử lý đăng ký
                          },
                          child: Text('Tiếp theo'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
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
                          // Xử lý đăng ký bằng Facebook
                        },
                        icon: Icon(Icons.facebook), 
                        label: Text('Facebook'),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý đăng ký bằng Google
                        },
                        icon: Icon(Icons.g_mobiledata), 
                        label: Text('Google'),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý đăng ký bằng Apple
                        },
                        icon: Icon(Icons.apple), 
                        label: Text('Apple'),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_box),
                      Text(
                        'Đồng ý điều khoản & dịch vụ của Bookie ',
                        style: TextStyle(color: Colors.black),
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
                        'Bạn đã có tài khoản? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),// Xử lý khi nhấn vào chữ "Đăng ký"
                          );
                        },
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            //Step screen 2
            Step(
              title: Text('Screen 2'), 
              content: Column(

              )
            ),
            Step(
              title: Text('Screen 3'), 
              content: Column(

              )
            )
          ],
        ),
      ),
    );
  }
}

