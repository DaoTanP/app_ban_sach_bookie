import 'package:flutter/material.dart';

class WrapperComponent extends StatelessWidget {
  final Color? backgroundColor;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final Widget body;
  final List<Widget>? trailing;
  final Widget? bottomNavBar;

  const WrapperComponent({
    Key? key,
    this.backgroundColor,
    this.leading,
    this.title,
    this.centerTitle,
    required this.body,
    this.trailing,
    this.bottomNavBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (title != null)
          ? AppBar(
              backgroundColor: backgroundColor,
              leading: leading,
              title: title,
              centerTitle: centerTitle,
              actions: trailing,
            )
          : null,
      body: body,
      bottomNavigationBar: bottomNavBar,
    );
  }
}
