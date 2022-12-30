import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: InkWell(
        onTap: () {
          setState(() {
            color:Colors.red;
          });
        },
        child: Ink(
          height: 300,
          width: 300,
          color: color,
          child: const Center(
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
