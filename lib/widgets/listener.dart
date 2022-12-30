import 'package:flutter/material.dart';
class ListenerWidget extends StatefulWidget {
  const ListenerWidget({super.key});

  @override
  State<ListenerWidget> createState() => _ListenerWidgetState();
}

class _ListenerWidgetState extends State<ListenerWidget> {
  int numberOfPress = 0 ;
  int numberOfReleases = 0 ;
  double x = 0.0 ;
  double y = 0 ;
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        
        setState(() {
          
          numberOfPress++;

        });
      },
      onPointerHover: (PointerEvent details){
        setState(() {
          x = details.position.dx;
          y = details.position.dy;
        });
      },
      onPointerUp: (PointerEvent details  ){
        setState(() {
          numberOfReleases++;
        });
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('presses: $numberOfPress',style: const TextStyle(fontSize: 30),),
            Text('releases: $numberOfReleases',style: const TextStyle(fontSize: 30),),
           Text('Curser: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)}',style: const TextStyle(fontSize: 30),)

          ],
        ),
      ),
    );
  }
}