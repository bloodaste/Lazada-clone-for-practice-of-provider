import 'package:flutter/material.dart';
import 'package:lazadaclone/tabrprofile/allproduct.dart';
import 'package:lazadaclone/tabrprofile/cancellation.dart';
import 'package:lazadaclone/tabrprofile/refund.dart';
import 'package:lazadaclone/tabrprofile/topay.dart';
import 'package:lazadaclone/tabrprofile/torecview.dart';
import 'package:lazadaclone/tabrprofile/toreview.dart';
import 'package:lazadaclone/tabrprofile/toship.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5,
            children: [
              Text(
                'My Order',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 40,
                width: 180,
                child: TextFormField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    hintText: 'Search seller or product',
                    isDense: true,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.fullscreen),
                  Text(
                    'filter',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              TabBar(
                tabAlignment: TabAlignment.start,
                padding: EdgeInsets.symmetric(horizontal: 10),
                dividerColor: null,
                isScrollable: true,
                tabs: [
                  const Tab(
                    text: 'All',
                  ),
                  const Tab(
                    text: 'To pay',
                  ),
                  const Tab(
                    text: 'To ship',
                  ),
                  const Tab(
                    text: 'To recieve',
                  ),
                  const Tab(
                    text: 'To Review',
                  ),
                  const Tab(
                    text: 'Return/Refund',
                  ),
                  const Tab(
                    text: 'Cancellation',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Allproduct(),
                    Topay(),
                    Toship(),
                    Torecview(),
                    Toreview(),
                    Refund(),
                    Cancellation(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
