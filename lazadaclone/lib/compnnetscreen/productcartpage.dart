import 'package:flutter/material.dart';

class Productcartpage extends StatelessWidget {
  const Productcartpage({super.key});

  @override
  Widget build(BuildContext context) {
    bool ishceck = false;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: ishceck,
                onChanged: (value) {},
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Color(0xffc60b11),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'LazMall',
                  style: TextStyle(
                      fontSize: 7,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Row(
                children: [
                  Text(
                    'Rakk Phillpines',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              )),
              Row(
                children: [
                  Icon(
                    Icons.shield_outlined,
                    size: 15,
                    color: Color(0xffc5030a),
                  ),
                  Text(
                    '100% Authentic',
                    style: TextStyle(
                      color: Color(0xffc5030a),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Checkbox(
                  value: ishceck,
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.network(
                      'https://img.lazcdn.com/g/p/c1635ec862a0c742218080956e33fdb7.jpg_720x720q80.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Attack Shark x3 49g Super Light Mouse,pixart Paw3,tinatamad nako mag lagay ng correct data ',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            'Black',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            size: 15,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '₱495.00 ',
                              style: TextStyle(
                                  color: Color(0xffeb5892),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: 'Discounted Price',
                              style: TextStyle(
                                  color: Color(0xffeb5892),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₱595.00',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xfff8f9fd),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  '—',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xfff8f9fd),
                                ),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xfff8f9fd),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
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
