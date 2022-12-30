import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: const Text('0')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: const Text('1')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: const Text('2'))
            ],
          ),
          IndexedStack(
            index: index,
            children: [
              Center(
                child: Image.asset('assets/aksiyon.jpeg'),
              ),
              Center(
                child: Image.asset('assets/google.jpeg'),
              ),
              Center(
                child: Image.asset('assets/fantastik.jpeg'),
              )
            ],
          )
        ],
      ),
    );
  }
}
