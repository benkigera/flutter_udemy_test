import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  final String clicked;
  final IconData icons;

  Skip(this.clicked,this.icons);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(clicked,
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 26
      ),
      ),
    );
  }
}
