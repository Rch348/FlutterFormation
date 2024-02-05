import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  // L'état qui prend la classe Heart reçoit la méthode createState() pour changer d'état vers la classe _HeartState
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          liked = !liked;
        });
      },
      icon: Icon(
        liked ? Icons.favorite : Icons.favorite_border, 
        color :Colors.red,
        size: 300
      ),
    );
  }
}
