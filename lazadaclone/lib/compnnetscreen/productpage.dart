import 'package:flutter/material.dart';
import 'package:lazadaclone/component/promsiepromo.dart';
import 'package:lazadaclone/model/producttpagefilter.dart';

class Productpage extends StatefulWidget {
  const Productpage({super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          title: Row(
            spacing: 5,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Laz',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: 'Flash',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      prefixIcon: const Icon(Icons.search, size: 18),
                      hintText: 'Search...',
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Icon(Icons.backup)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfffa0164),
                    Color(0xfffa0164),
                    Color(0xfffef4f6),
                    Color(0xfffeebed)
                  ],
                ),
              ),
              child: Column(
                children: [
                  Transform(
                    transform: Matrix4.identity()..setEntry(0, 1, -0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfffff77b),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 1,
                      ),
                      child: Text(
                        'Price Lower than eslewhere',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc0461),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Get 1.2x lacash of the price gap if not',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.green,
                      color: Color(0xffffe883),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.23,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Promsiepromo();
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: mylist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Text(mylist[index]),
                          );
                        }),
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  fit: BoxFit.fill,
                                  height: height * 0.15,
                                  'https://img.lazcdn.com/g/p/af0d098019a747753f77e82d2ffc0169.jpg_720x720q80.jpg_.webp'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Color(0xffffedef),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '₱16,000',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xfff94757),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.red,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3, vertical: 2),
                                    child: Text(
                                      '-19%',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
