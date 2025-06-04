import 'package:flutter/material.dart';
import 'package:lazadaclone/lazadahomepade.dart';

void main() {
  runApp(
    const Laazadaclone(),
  );
}

class Laazadaclone extends StatelessWidget {
  const Laazadaclone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepagelazadaclone(),
    );
  }
}
