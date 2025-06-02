import 'package:flutter/material.dart';

class Likedpage extends StatefulWidget {
  const Likedpage({super.key});

  @override
  State<Likedpage> createState() => _LikedpageState();
}

class _LikedpageState extends State<Likedpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('this is liked page'),
    );
  }
}
