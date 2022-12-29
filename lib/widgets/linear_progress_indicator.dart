import 'package:flutter/material.dart';

class LinearProgressWidget extends StatefulWidget {
  const LinearProgressWidget({super.key});

  @override
  State<LinearProgressWidget> createState() => _LinearProgressWidgetState();
}

class _LinearProgressWidgetState extends State<LinearProgressWidget> with TickerProviderStateMixin {
  late AnimationController controller;

@override
  void initState() {
controller=AnimationController(vsync: this,duration: const Duration(seconds: 5))..addListener(() {
  setState(() {
    
  });
  controller.repeat(reverse: true);
});
    super.initState();

  }
  @override
  void dispose() {
controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children:  [
LinearProgressIndicator(value: controller.value,),
const LinearProgressIndicator()
  ],
),
    );
  }
}