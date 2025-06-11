import 'package:flutter/material.dart';
import 'package:lazadaclone/component/productsuggestion.dart';
import 'package:lazadaclone/model/lastpageofaccount.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: height * 0.2,
                    color: Colors.grey,
                  ),
                  Align(
                    alignment: Alignment(
                        0.7, -0.8), // (x, y): 1 is right/bottom, -1 is left/top
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: Color(0xff474647)),
                      child: SizedBox(
                        height: 20, // important for VerticalDivider to render
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.fire_truck,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Free Shipping',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.local_offer,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Best Deals',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.support_agent,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Support',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.1,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Colors.white),
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mainpageicon.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 30,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: mainpageicon[index].myicon,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 40,
                              child: Text(
                                mainpageicon[index].nameoftheicon,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(
                        0xffffd8ea,
                      ),
                      Color(
                        0xfffabadd,
                      ),
                      Color(
                        0xfffa9dcc,
                      )
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Text(
                          '6.6',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff94798),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              color: Color(0xfffd419a),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Text(
                                'June\n5-6',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'SALE START AT 8PM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff94798),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            Color(0xfffa9fcc),
                            Color(0xfffe9ccd),
                            Color(0xfffc9cc8),
                            Color(0xfffd9dce),
                            Color(0xfffa9fcc),
                            Color(0xfffa9fcc),
                          ],
                        )),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0xfffe5a4f),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                              ),
                              child: Text(
                                'COLLECT VOUCHERS HERE',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '18% OFF',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xfff94798),
                                            ),
                                          ),
                                          Text(
                                            'Lazada Voucher',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xfff94798),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '150.00',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff2f9d8a),
                                            ),
                                          ),
                                          Text(
                                            'Free Shipping',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff2f9d8a),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xffff850d),
                                                Color(0xfffe5a4f),
                                                Color(0xfffe5a4f)
                                              ],
                                            ),
                                          ),
                                          child: Text(
                                            'Collect All',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 5,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'https://assets.aboutamazon.com/dims4/default/e41d188/2147483647/strip/true/crop/1599x900+1+0/resize/1240x698!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F87%2Ffb%2F7c6b10b84236a62e7f9e5dbd92ed%2Ftech-gadgets.jpg',
                                    fit: BoxFit.fill,
                                    height: height * 0.12,
                                    width: width * 0.3,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Techhie Deals',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xffed153b),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_kd8R0vvxfnZrDnYtri3UXWeURiKhE_XEw&s'),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '6.6 Deals',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.chevron_right_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    'https://keychron.ph/cdn/shop/products/Keychron-K6-compact-65-percent-wireless-mechanical-keyboard-for-Mac-Windows-iOS-keychron-switch-red-with-type-C-non-backlight_9b82e62e-48b9-4ec2-a21c-9775ab9ced60.jpg?v=1655462853&width=1214',
                                    fit: BoxFit.fill,
                                    height: height * 0.12,
                                    width: width * 0.3,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'LazMall',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              'LazFlash',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              spacing: 3,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff94757),
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    '06',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff94757),
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    '15',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff94757),
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    '15',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              '6.6',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff94757),
                              ),
                            ),
                            Text(
                              'Up to 90% Offs',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfff94757),
                              ),
                            ),
                            Icon(Icons.chevron_right_rounded)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                            child: Column(
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
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  fit: BoxFit.fill,
                                  height: height * 0.15,
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc0yPP5WtQ_-B_n8XwJOSlJW3TZOHIRnViRQ&s'),
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
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  fit: BoxFit.fill,
                                  height: height * 0.15,
                                  'https://i.ebayimg.com/images/g/SHMAAOSwVR1mYjCo/s-l1200.jpg'),
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
                        )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 5,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '₱0 ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffed3b92),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Wow Deals',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Color(0xfffacc34),
                              ),
                              child: Text(
                                'CHOICE',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              '6.6',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff94757),
                              ),
                            ),
                            Text(
                              'Add-on Deals|FreeGift',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfff94757),
                              ),
                            ),
                            Icon(Icons.chevron_right_rounded)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    fit: BoxFit.fill,
                                    height: height * 0.15,
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBUOL1pbpVf_C1fTo7RrTKcd3U5fE8ZEejN9lhKC3nhhIBEMfrO-4Y9YoptKBZsmoviyo&usqp=CAU'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration:
                                    BoxDecoration(color: Color(0xfffefbea)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₱409.37',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xfffed032),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: Text(
                                        'Hot',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    fit: BoxFit.fill,
                                    height: height * 0.15,
                                    'https://pimpkicks.com.ph/cdn/shop/files/POPMARTLABUBUTHEMONSTERSEXCITINGMACARONSVINYLFACEBLINDBOX.jpg?v=1731223351'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration:
                                    BoxDecoration(color: Color(0xfffefbea)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₱103.37',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xfffed032),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: Text(
                                        'Hot',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    fit: BoxFit.fill,
                                    height: height * 0.15,
                                    'https://m.media-amazon.com/images/I/61rBbrd7gvL._AC_UF1000,1000_QL80_.jpg'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration:
                                    BoxDecoration(color: Color(0xfffefbea)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₱256.37',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xfffed032),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: Text(
                                        'Hot',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Suggestion(),
            ],
          ),
        ),
      ),
    );
  }
}
