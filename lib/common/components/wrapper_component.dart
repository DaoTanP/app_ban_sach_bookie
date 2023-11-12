import 'package:app_ban_sach_bookie/features/auth/views/login_page.dart';
import 'package:app_ban_sach_bookie/features/auth/views/signup_page.dart';
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
      this.trailing,})
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
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                );
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
