import 'package:app_ban_sach_bookie/common/components/wrapper_component.dart';
import 'package:app_ban_sach_bookie/common/views/home_page.dart';
import 'package:app_ban_sach_bookie/features/auth/data/user_model.dart';
import 'package:app_ban_sach_bookie/features/auth/views/signup_page.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperComponent(
      title: const Text(
        'Đăng nhập',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginBody(), // Sử dụng widget tạo nội dung đăng nhập
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool passwordObscure = true;
  Widget AccountNotFoundMessage = Container();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Số điện thoại',
                    border: OutlineInputBorder(),
                  ),
                  validator: (username) =>
                      username!.isEmpty ? 'Vui lòng nhập số điện thoại' : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lock,
                  size: 40,
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObscure = !passwordObscure;
                        });
                      },
                      icon: const Icon(Icons.visibility),
                    ),
                  ),
                  obscureText: passwordObscure,
                  validator: (password) =>
                      password!.isEmpty ? 'Vui lòng nhập mật khẩu' : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Quên mật khẩu ?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          AccountNotFoundMessage,
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => login(),
              style: ButtonStyle(
                foregroundColor:
                    Theme.of(context).textButtonTheme.style?.foregroundColor,
                backgroundColor:
                    Theme.of(context).textButtonTheme.style?.backgroundColor,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Đăng nhập SMS',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
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
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Xử lý đăng nhập bằng Facebook
                },
                style: ButtonStyle(
                  foregroundColor:
                      Theme.of(context).textButtonTheme.style?.foregroundColor,
                  backgroundColor:
                      Theme.of(context).textButtonTheme.style?.backgroundColor,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.facebook, size: 24),
                label: const Text('Facebook'),
              ),
              const SizedBox(width: 50),
              ElevatedButton.icon(
                onPressed: () {
                  // Xử lý đăng nhập bằng Google
                },
                style: ButtonStyle(
                  foregroundColor:
                      Theme.of(context).textButtonTheme.style?.foregroundColor,
                  backgroundColor:
                      Theme.of(context).textButtonTheme.style?.backgroundColor,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.g_mobiledata, size: 28),
                label: const Text('Google'),
              ),
              const SizedBox(width: 50),
              ElevatedButton.icon(
                onPressed: () {
                  // Xử lý đăng nhập bằng Apple
                },
                style: ButtonStyle(
                  foregroundColor:
                      Theme.of(context).textButtonTheme.style?.foregroundColor,
                  backgroundColor:
                      Theme.of(context).textButtonTheme.style?.backgroundColor,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.apple, size: 28),
                label: const Text('Apple'),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            width: 300, // Đặt chiều rộng của thanh Divider tại đây
            child: const Divider(
              color: Colors.grey,
              height: 2,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bạn chưa có tài khoản? ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignupPage()), // Xử lý khi nhấn vào chữ "Đăng ký"
                    );
                  },
                  child: const Text(
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
      ),
    );
  }

  void login() {
    _formKey.currentState!.validate();
    String username = _usernameController.text;
    String password = _passwordController.text;

    List userList = User.userList();
    for (var user in userList) {
      if (user.username == username && user.password == password) {
        Navigator.pop(
          context,
        );
      }
    }

    setState(() {
      AccountNotFoundMessage = Container(
        child: Text(
          "Số điện thoại hoặc mật khẩu không đúng",
          style: TextStyle(color: Colors.red),
        ),
      );
    });
  }
}
