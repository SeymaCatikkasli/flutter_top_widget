import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
          image: NetworkImage(
        'https://picsum.photos/200/300',
      ),
      color: Colors.purpleAccent,
      colorBlendMode: BlendMode.colorBurn,),
    );
  }
}
