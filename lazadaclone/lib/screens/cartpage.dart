import 'package:flutter/material.dart';
import 'package:lazadaclone/compnnetscreen/productcartpage.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f7),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Color(0xfffbfafa),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 5,
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(color: Color(0xfffafbfd)),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(
                                Icons.wallet,
                                size: 15,
                              ),
                              Text(
                                'Safe Transaction',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff42464e)),
                              )
                            ],
                          ))),
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                  Icon(
                    Icons.delete_outline,
                    size: 25,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Productcartpage()
          ],
        ),
      ),
    );
  }
}
