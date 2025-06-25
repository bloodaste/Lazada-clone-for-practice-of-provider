import 'package:flutter/material.dart';

class Lazflashprodoductpage extends StatelessWidget {
  const Lazflashprodoductpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.greenAccent,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  fit: BoxFit.fill,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxG_U2rN34f7HDGGm46tNW3oz7i25AE5dEqA&s'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  color: Color(0xffcb070c),
                ),
                child: Text(
                  'Lm',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 0.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  border: Border.all(
                    color: Color(0xffa8555d),
                  ),
                ),
                child: Text(
                  'Authentic',
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Expanded(
                child: Text(
                  'Samsung Galaxy A15',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 7,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYEi1YhSLcFDeZ1nbr1D3Tkg_xztUCYPNSaQ&s'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Just bought',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffe4f5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'P4,700.00',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'P4,700.00',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xfffa1758),
                        Color(0xfffd4450),
                        Color(0xfffd4450),
                        Color(0xfffd7f44),
                      ],
                    ),
                  ),
                  child: Text(
                    '65%\noff',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
