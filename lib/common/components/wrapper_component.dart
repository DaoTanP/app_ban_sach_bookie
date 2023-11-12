import 'package:flutter/material.dart';

class WrapperComponent extends StatelessWidget {
  final Color backgroundColor;
  final Widget? leading;
  final Widget title;
  final bool? centerTitle;
  final Widget body;
  final List<Widget>? trailing;

  const WrapperComponent(
      {Key? key,
      required this.backgroundColor,
      this.leading,
      required this.title,
      this.centerTitle,
      required this.body,
      this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: leading,
        title: title,
        centerTitle: centerTitle,
        actions: trailing,
      ),
      body: Center(
        child: Text(
          'Bla Bla',
          style: TextStyle(fontSize: 24),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal:8.0),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.8),
          borderRadius: BorderRadius.all(Radius.circular(24))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             FloatingActionButton(
              onPressed:(){
                //Test chuyển trang Login
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => LoginPage()),
                // );
              },
              tooltip: 'Home',
              child: Icon(Icons.home),
            ),
            FloatingActionButton(
              onPressed:(){

              },
              tooltip: 'Add',
              child: Icon(Icons.add_circle_outlined),
            ),
            FloatingActionButton(
              onPressed:(){

              },
              tooltip: 'User',
              child: Icon(Icons.person_2_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
