import 'package:flutter/material.dart';

class calculator_button extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;

  calculator_button({
    super.key,
    required this.onClick,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(

              padding: EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              backgroundColor: Colors.grey[800]
          ),
          onPressed: (){},
          child: Text('1',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),
          )),
    );
  }
}