import 'package:flutter/material.dart';
import 'package:flutter_top_widget/widgets/layout_builder.dart';
import 'package:flutter_top_widget/widgets/limited_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutBuilderWidget(),
    );
  }
}