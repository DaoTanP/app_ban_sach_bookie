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
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // Icon trợ giúp
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SignupBody(),
      ),
    );
  }
}

class SignupBody extends StatefulWidget {
  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  Widget _otpTextField({required bool first, required bool last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
          ),
        ),
      ),
    );
  }

  int _currentStep = 0;
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          type: StepperType.horizontal,
          steps: <Step>[
            //Step screen 1
            Step(
                isActive: _currentStep == 0,
                title: Text('Screen 1'),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.call,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Số điện thoại...',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Xử lý nút tiếp tục
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              Theme.of(context).textButtonTheme.style?.foregroundColor,
                          backgroundColor:
                              Theme.of(context).textButtonTheme.style?.backgroundColor,
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Tiếp tục',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Hoặc'),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey),
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
                            foregroundColor:
                                Theme.of(context).textButtonTheme.style?.foregroundColor,
                            backgroundColor:
                                Theme.of(context).textButtonTheme.style?.backgroundColor,
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          icon: Icon(Icons.facebook, size: 24),
                          label: Text('Facebook'),
                        ),
                        SizedBox(width: 50),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Xử lý đăng ký bằng Google
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                Theme.of(context).textButtonTheme.style?.foregroundColor,
                            backgroundColor:
                                Theme.of(context).textButtonTheme.style?.backgroundColor,
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          icon: Icon(Icons.g_mobiledata, size: 28),
                          label: Text('Google'),
                        ),
                        SizedBox(width: 50),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Xử lý đăng ký bằng Apple
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                Theme.of(context).textButtonTheme.style?.foregroundColor,
                            backgroundColor:
                                Theme.of(context).textButtonTheme.style?.backgroundColor,
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          icon: Icon(Icons.apple, size: 28),
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
                                  text:
                                      'Bạn đồng ý với Bookie về điều khoản dịch vụ & Chính sách bảo mật khi đăng ký',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 300, // Đặt chiều rộng của thanh Divider tại đây
                      child: Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
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
                                MaterialPageRoute(
                                    builder: (context) =>LoginPage()), // Xử lý khi nhấn vào chữ "Đăng ký"
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
                )),
            //Step screen 2
            Step(
                isActive: _currentStep == 1,
                title: Text('Screen 2'),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Mã xác thực (OTP) sẽ gửi qua tin nhắn của số điện thoại",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "(+84) 0123456789",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _otpTextField(first: true, last: false),
                              _otpTextField(first: false, last: false),
                              _otpTextField(first: false, last: false),
                              _otpTextField(first: false, last: false),
                              _otpTextField(first: false, last: true),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Gửi lại mã ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Vui lòng chờ trong giây lát để nhận được mã xác thực",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 200, // Đặt chiều rộng của thanh Divider tại đây
                      child: Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Xử lý nút tiếp tục
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              Theme.of(context).textButtonTheme.style?.foregroundColor,
                          backgroundColor:
                              Theme.of(context).textButtonTheme.style?.backgroundColor,
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Tiếp tục',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            "Lưu ý: Không cung cấp mã xác thực cho người khác\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            //Step Screen 3
            Step(
                isActive: _currentStep == 2,
                title: Text('Thông tin'),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                      radius: 25, // Điều chỉnh kích thước của hình ảnh ở đây
                    ),
                    SizedBox(height: 10),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Sửa',
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tên',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Đỗ Hoàng Vinh', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mô tả',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Giao sư môn sinh học', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      // thickness: 2,
                      color: Colors.grey,
                      height: 2,
                    ),
                    SizedBox(height: 20), //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Giới tính',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Nữ', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ngày sinh',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  '02/04/2002', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Điện thoai',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  '0123456xxx', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý khi người dùng nhấn để chỉnh sửa tên
                            },
                            child: Row(
                              children: [
                                Text(
                                  'GiaoSưVinh@gmail.com', // Tên người dùng hoặc biến chứa tên
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right, // Icon '>'
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: SignupBody(),
    ));
  }
}
