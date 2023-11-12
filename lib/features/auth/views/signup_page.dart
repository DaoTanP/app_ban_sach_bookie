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
        centerTitle: true,
        // Icon trợ giúp
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.help,
              color: Colors.black, 
            ),
          ),
        ],
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
            //Step screen 1
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
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                              ),
                            ),
                          ),
                          child: Text(
                            'Tiếp theo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),
                          ),
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
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                            ),
                          ),
                        ),
                        icon: Icon(Icons.facebook), 
                        label: Text('Facebook'),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý đăng ký bằng Google
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                            ),
                          ),
                        ),
                        icon: Icon(Icons.g_mobiledata), 
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter, // Đảm bảo căn chỉnh theo trục chính
                        child: Icon(Icons.check_box),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text: 'Bạn đồng ý với Bookie về điều khoản dịch vụ & Chính sách bảo mật khi đăng ký',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
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
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),// Xử lý khi nhấn vào chữ "Đăng ký"
                            );
                          },
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(
                              color: Colors.black, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                              ),
                            ),
                          ),
                          child: Text(
                            'Tiếp theo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),
                          ),
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
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                            ),
                          ),
                        ),
                        icon: Icon(Icons.facebook), 
                        label: Text('Facebook'),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý đăng ký bằng Google
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Điều chỉnh border radius ở đây
                            ),
                          ),
                        ),
                        icon: Icon(Icons.g_mobiledata), 
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter, // Đảm bảo căn chỉnh theo trục chính
                        child: Icon(Icons.check_box),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                text: 'Bạn đồng ý với Bookie về điều khoản dịch vụ & Chính sách bảo mật khi đăng ký',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
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
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),// Xử lý khi nhấn vào chữ "Đăng ký"
                            );
                          },
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 125, 110, 110), 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            //Step Screen 3
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

