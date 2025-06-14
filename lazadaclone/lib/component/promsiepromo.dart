import 'package:flutter/material.dart';

class Promsiepromo extends StatelessWidget {
  const Promsiepromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 120,
                width: 110,
                child: Image.network(
                    fit: BoxFit.cover,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG-TdhZIRooUjFHP2gTLH0t1jVGyP24NpXDLMkA_KOxbIccPn88Kk_TlguCzxw4r_z-nk&usqp=CAU'),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(color: Color(0xfffcf97a)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price Promise',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.green,
                      color: Color(0xffe42254),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xfffe0769)),
                    child: Text(
                      'Lower Than Elsewhere',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        decorationColor: Colors.green,
                        color: Color(0xfffead82),
                      ),
                    ),
                  ),
                ],
              )),
          Text(
            'P1,997.71',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              decorationColor: Colors.green,
              color: Color(0xfffe0769),
            ),
          ),
          Text(
            'Save P999.85',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w900,
              decorationColor: Colors.green,
              color: Color(0xfffe0769),
            ),
          ),
        ],
      ),
    );
  }
}
