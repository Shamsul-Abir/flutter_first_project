import 'package:flutter/material.dart';

class ListVv extends StatefulWidget {
  const ListVv({super.key});

  @override
  State<ListVv> createState() => _ListVvState();
}

class _ListVvState extends State<ListVv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('List View', style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}
