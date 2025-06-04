import 'package:flutter/material.dart';
import 'package:lazadaclone/compnnetscreen/Myorders.dart';
import 'package:lazadaclone/compnnetscreen/settings.dart';
import 'package:lazadaclone/component/channelcomponent.dart';
import 'package:lazadaclone/component/recentlyview.dart';
import 'package:lazadaclone/model/channeltemplist.dart';
import 'package:lazadaclone/model/lastpageofaccount.dart';
import 'package:lazadaclone/model/list.dart';
import 'package:lazadaclone/model/recentlyviewmodel.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  List<Templistofchannel> mylist = [
    Templistofchannel(
      divcoler: Color(0xfffef7fb),
      footer: 'Up to 50% Off!',
      header: 'Shop Now!',
      img:
          'https://lh3.googleusercontent.com/proxy/h01eYJUc5ZoYDXKJR1uUhMn5Uw5WNwbYUpVd13AzVoWMKcOrHHDg1tpyO3lyMRWbjjV5vu2LiKqCBNsph8G7iMGba5Aa6RnYxfj2z0kVXUU',
    ),
    Templistofchannel(
      divcoler: Color(0xfffcfffe),
      footer: 'P78.12',
      header: 'LazFlash',
      img:
          'https://images.unsplash.com/photo-1559613671-dfe2fb6a7680?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZXJ0aXNlbWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Templistofchannel(
      divcoler: Color(0xfffcfffe),
      footer: 'Up to 50% Off!',
      header: 'Shop Now!',
      img:
          'https://images.unsplash.com/photo-1559613671-dfe2fb6a7680?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZXJ0aXNlbWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Templistofchannel(
      divcoler: Color(0xfffcfffe),
      footer: 'Up to 50% Off!',
      header: 'Shop Now!',
      img:
          'https://images.unsplash.com/photo-1559613671-dfe2fb6a7680?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZXJ0aXNlbWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Templistofchannel(
      divcoler: Color(0xfffcfffe),
      footer: 'Up to 50% Off!',
      header: 'Shop Now!',
      img:
          'https://images.unsplash.com/photo-1559613671-dfe2fb6a7680?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZXJ0aXNlbWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Templistofchannel(
      divcoler: Color(0xfffcfffe),
      footer: 'Up to 50% Off!',
      header: 'Shop Now!',
      img:
          'https://images.unsplash.com/photo-1559613671-dfe2fb6a7680?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZXJ0aXNlbWVudHxlbnwwfHwwfHx8MA%3D%3D',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-.5, .5),
                    colors: [
                      Color(0xfffef1f5),
                      Color(0xfffed5e5),
                    ],
                    radius: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://scontent.fmnl8-5.fna.fbcdn.net/v/t39.30808-6/499594426_1641793683192256_3740902847521410793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGPe6RgRqhrbm6J_Aw_b4wm8t7w6sZ3aQPy3vDqxndpA9KGZKDeaOAz6L4iG6AvjJIyGlzlk96201JYORSWxMB-&_nc_ohc=-7cNkbI6Y_4Q7kNvwGIX-uA&_nc_oc=Adnf2QHfjVxmJK12SXPSdhi4Lyor_4Qk0tDwRYb0m5ciw8hBbEC10KIrLNbH7Ox99Dc&_nc_zt=23&_nc_ht=scontent.fmnl8-5.fna&_nc_gid=cI-wPuRrwmwq5Pu50-RJHw&oh=00_AfItT50i0AJZYNmdqF1uRU-F1fQ_i9QVnSq62_gJGoeWMA&oe=68442D8E'),
                          radius: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kurt Andrei Austria Gutierrez',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              child: Row(
                                spacing: 3,
                                children: [
                                  Icon(
                                    Icons.confirmation_number,
                                    size: 15,
                                  ),
                                  Text(
                                    '14 voucher | claim ₱150 vocher',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Icon(Icons.arrow_right_rounded)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Settings(),
                          ),
                        );
                      },
                      icon: Icon(Icons.settings),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                padding: EdgeInsets.all(20),
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Games',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Misson Center >',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              spacing: 10,
                              children: [
                                Expanded(
                                    child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS29lMSBCAjQxTR0YqRlx6VFwmFQQ1N-EiQGA&s')),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 3,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Coins ',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(Icons.chevron_right_rounded)
                                      ],
                                    ),
                                    Text('90 Free Coins'),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text('Collect'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              spacing: 10,
                              children: [
                                Expanded(
                                    child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS29lMSBCAjQxTR0YqRlx6VFwmFQQ1N-EiQGA&s')),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 2,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'LazLand ',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(Icons.chevron_right_rounded)
                                      ],
                                    ),
                                    Text('90 Free Coins'),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text('Collect'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gamelist.length,
                          itemBuilder: (context, index) {
                            final game = gamelist[index];
                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Column(
                                    children: [
                                      game.image,
                                      Text(game.name),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Orders',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Myorders(),
                              ),
                            );
                          },
                          child: Text(
                            'View All Orders >',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.wallet,
                              color: Color(0xfffd3b8d),
                              size: 30,
                            ),
                            Text(
                              'To Pay',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              color: Color(0xfffd3b8d),
                              size: 30,
                            ),
                            Text(
                              'To Pay',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Column(children: [
                          Icon(
                            Icons.local_shipping,
                            color: Color(0xfffd3b8d),
                            size: 30,
                          ),
                          Text(
                            'To Pay',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ]),
                        Column(
                          children: [
                            Icon(
                              Icons.reviews,
                              color: Color(0xfffd3b8d),
                              size: 30,
                            ),
                            Text(
                              'To Pay',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Column(children: [
                          Icon(
                            Icons.report_rounded,
                            color: Color(0xfffd3b8d),
                            size: 30,
                          ),
                          Text(
                            'To Pay',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        spacing: 20,
                        children: [
                          Image.network(
                            'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-x7.jpg',
                            scale: 6,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivered  >',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('16:30 May 26')
                                  ],
                                ),
                                Text(
                                  'Your Package has been delivered[Pulilan]',
                                )
                              ],
                            ),
                          )
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            Text(
                              'My Channels',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.edit),
                            Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'All Channels',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                      itemCount: mylist.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: .7,
                      ),
                      itemBuilder: (context, index) {
                        final list = mylist[index];
                        return Channelcomponent(
                          divcoler: list.divcoler,
                          footer: list.footer,
                          header: list.header,
                          image: list.img,
                        );
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View More Channel',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      10,
                    ),
                    topRight: Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            Text(
                              'My Lazada Wallet',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.remove_red_eye_outlined)
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'View',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.5,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Lazada\nPayLater',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '₱52,991.60',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_up_sharp)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.lightBlue.shade100),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          'View',
                                          style: TextStyle(
                                              color:
                                                  Colors.blueAccent.shade700),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'FashCash\nCredit',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₱2800',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xfffef1e0)),
                                    child: Text(
                                      'Onoing Loan',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffebb577),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PHP',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₱2800',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffe8f1fe)),
                                    child: Text(
                                      'Cash In',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment\nOptions',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₱2800',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffe8f1fe)),
                                    child: Text(
                                      'Cash In',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recently Viewed',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'View More',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.chevron_right_rounded)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 120,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 2),
                        itemCount: recentlyviewmodel.length,
                        itemBuilder: (context, index) {
                          final recent = recentlyviewmodel[index];
                          return Recentlyview(
                            price: recent.price,
                            url: recent.url,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 200, // Keep this to restrict vertical size
                width: double.infinity, // Fill the horizontal space
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lastlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 rows
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: .9,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        lastlist[index].myicon,
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          lastlist[index].nameoftheicon,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
