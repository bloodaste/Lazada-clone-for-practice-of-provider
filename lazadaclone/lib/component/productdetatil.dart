import 'package:flutter/material.dart';

class Productdetatil extends StatelessWidget {
  const Productdetatil({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          title: Row(
            spacing: 5,
            children: [
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      prefixIcon: const Icon(Icons.search, size: 18),
                      hintText: 'Iphone 13',
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffbd6469),
                          width: 2,
                        ),
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
              SizedBox(
                width: 3,
              ),
              Icon(Icons.backup),
              SizedBox(
                width: 3,
              ),
              Icon(Icons.backup)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height * 0.4,
              child: Image.network(
                  fit: BoxFit.fitWidth,
                  'https://beyondthebox.ph/cdn/shop/products/iPhone131_CAPACITY-ALL_COLOR-PRODUCTRED_700x700.png?v=1649308780'),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '₱26,555',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(
                            0xffca2d45,
                          ),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Icon(
                        Icons.discount,
                        size: 13,
                      ),
                      Text(
                        '₱32,2000',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '7,549.00 x 3 months with SPayLayer',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.chevron_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        decoration: BoxDecoration(
                          color: Color(0xffcb0518),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.my_library_books_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              'Sulit deals',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xffcf021f),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                        child: Text(
                          'Buy ₱5.699K get ₱100 Off',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xffcf021f),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xffcf021f),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                        child: Text(
                          'Buy ₱5.699K get ₱100 Off',
                          style: TextStyle(
                            color: Color(0xffcf021f),
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffd5011a),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        child: Text(
                          'Mall',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Text(
                          'Iphone 13',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.fire_truck_sharp,
                            color: Color(0xff59b1a4),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Guarantee to get by 19- 20 jun'),
                              Text(
                                  'Get a P50 voucher if your yours arravies late.')
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.chevron_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_sharp,
                            color: Color(0xffbb5066),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('100% Authentic * Free & Easy Returns')
                        ],
                      ),
                      Icon(Icons.chevron_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_sharp,
                            color: Color(0xffbb5066),
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('100% Authentic * Free & Easy Returns')
                        ],
                      ),
                      Icon(Icons.chevron_right_rounded)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '4.9',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Text(
                            'Product Rating',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('(298)')
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://img.freepik.com/free-photo/close-up-portrait-curly-handsome-european-male_176532-8133.jpg?semt=ais_hybrid&w=740'),
                                  radius: 12,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'name of the account',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('Helpful (2101)'),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.linked_camera,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Performance: 10/10'),
                              Text('Performance: 10/10'),
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: height * 0.1,
                                child: Image.network(
                                    fit: BoxFit.cover,
                                    'https://i.ebayimg.com/images/g/Au4AAOSww-ZirtRg/s-l1200.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: height * 0.1,
                                child: Image.network(
                                    fit: BoxFit.cover,
                                    'https://i.ebayimg.com/thumbs/images/g/P6YAAeSwJFFoTGkF/s-l1200.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: height * 0.1,
                                child: Image.network(
                                    fit: BoxFit.cover,
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPMRHOnBY9j27FHU_aF8PJwanP0Q3RvHcLYw&s'),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View All',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Other Product Review in shop',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.chevron_right_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Dg5n2fi0BH3JJyKuFGSG4qAj-k5eGBQgRA&shttps://brandlogos.net/wp-content/uploads/2012/12/apple-authorized-reseller-logo-vector.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Apple Flagship Store',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Color(0xff887040),
                                      Color(0xffa7895a),
                                      Color(0xffe2c7a3),
                                      Color(0xffe2c7a3)
                                    ])),
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      'Trending Store',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: Color(0xfffff7eb),
                                    ),
                                    child: Text(
                                      'In Mobile Accessories',
                                      style: TextStyle(
                                        color: Color(0xff948969),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffcb041b),
                            ),
                            borderRadius: BorderRadius.circular(
                              5,
                            )),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          'Visit',
                          style: TextStyle(
                            color: Color(0xffcb041b),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              child: Column(
                            children: [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Color(0xffcb041b),
                                  fontSize: 15,
                                ),
                              ),
                              const Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )),
                        ),
                        Expanded(
                          child: Container(
                              child: Column(
                            children: [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Color(0xffcb041b),
                                  fontSize: 15,
                                ),
                              ),
                              const Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )),
                        ),
                        Expanded(
                          child: Container(
                              child: Column(
                            children: [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Color(0xffcb041b),
                                  fontSize: 15,
                                ),
                              ),
                              const Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: height * 0.09,
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.chat_bubble_outline, color: Colors.red),
                Text("Chat Now", style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add_shopping_cart, color: Colors.red),
                Text("Add to Cart", style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              color: Color(0xffd0001a),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Buy With Vouchers',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                  Text('P25,299',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
