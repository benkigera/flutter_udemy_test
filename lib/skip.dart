import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  final String clicked;
  final IconData icons;

  Skip(this.clicked, this.icons);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        //row contents horizontally
        crossAxisAlignment: CrossAxisAlignment.center,
        //row contents vertically
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            clicked,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
          Icon(Icons.visibility_off)
        ],
      ),
    );
  }
}
