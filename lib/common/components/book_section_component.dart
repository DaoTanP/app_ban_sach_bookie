import 'package:flutter/material.dart';

class BookSectionComponent extends StatelessWidget {
  const BookSectionComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Top sách mua nhiều"),
        Row(
          children: [],
        )
      ],
    );
  }
}
