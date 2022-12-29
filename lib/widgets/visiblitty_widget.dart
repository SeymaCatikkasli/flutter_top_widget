import 'package:flutter/material.dart';

class VisibleWidget extends StatefulWidget {
  const VisibleWidget({super.key});

  @override
  State<VisibleWidget> createState() => _VisibleWidgetState();
}

class _VisibleWidgetState extends State<VisibleWidget> {
   bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VisibleWidget'),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              _isVisible=!_isVisible;
            });
          }, child: const Text('switch',style: TextStyle(height: 200,color: Colors.white),))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/google.jpeg',height: 100,),
              Visibility(visible: _isVisible,child:Image.asset('assets/google.jpeg'), ),
              Image.asset('assets/google.jpeg',height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
