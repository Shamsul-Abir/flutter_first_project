import 'package:flutter/material.dart';

class calculator_button extends StatelessWidget {
  String text;
  Color ? color;  //if user does give any color it will automatically take grey color
  final VoidCallback onClick;

  calculator_button({
    super.key,
    required this.onClick,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(

                padding: EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: color ?? Colors.grey[800]
            ),
            onPressed: onClick,
            child: Text(text,
              style: TextStyle(
                  fontSize: 32,
                  color: color ?? Colors.black87
              ),
            )),
      ),
    );
  }
}