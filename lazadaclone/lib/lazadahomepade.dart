import 'package:flutter/material.dart';
import 'package:lazadaclone/screens/accountpage.dart';
import 'package:lazadaclone/screens/cartpage.dart';
import 'package:lazadaclone/screens/likedpage.dart';
import 'package:lazadaclone/screens/mainpage.dart';
import 'package:lazadaclone/screens/message.dart';

class Homepagelazadaclone extends StatefulWidget {
  const Homepagelazadaclone({super.key});

  @override
  State<Homepagelazadaclone> createState() => _HomepagelazadacloneState();
}

class _HomepagelazadacloneState extends State<Homepagelazadaclone> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List screens = [
      Homepage(),
      Likedpage(),
      Message(),
      Cartpage(),
      Accountpage(),
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_rounded),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heat_pump_rounded),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
