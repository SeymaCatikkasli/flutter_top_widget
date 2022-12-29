import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Center(
            child: Image.network('https://picsum.photos/seed/picsum/200/300'),
          );
        } else {
          return const Center(
            child: Text('Screen under 600 '),
          );
        }
      },
    );
  }
}
