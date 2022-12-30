import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({super.key});

  @override
  State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool ignore = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                ignore = !ignore;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: ignore ? Colors.red : Colors.green),
            child: Text(ignore ? 'bLOCKED ' : 'All Good'),
          ),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(onPressed: (){},child:const Text('cLİCK ME !') ,),
          )
        ],
      ),
    );
  }
}
