import 'package:flutter/material.dart';
import 'package:lazadaclone/compnnetscreen/productcartpage.dart';
import 'package:lazadaclone/model/productmodel.dart';

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
    bool ishceck = false;
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
            Expanded(
                child: ListView.builder(
              itemCount: productList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Productcartpage(
                  productImage: productList[index].productImage,
                  productName: productList[index].productName,
                  productSelected: productList[index].productSelected,
                  sellername: productList[index].sellerName,
                  isDiscounted: productList[index].isDiscounted,
                  isLazMall: productList[index].isLazMall,
                  discountedPrice: productList[index].discountedPrice,
                  notDiscountedPrice: productList[index].notDiscountedPrice,
                );
              },
            )),
            Container(
              margin: EdgeInsets.only(
                right: 5,
              ),
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: ishceck, onChanged: (value) {}),
                      Text('All'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Subtotal: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                TextSpan(
                                  text: '₱3000.00',
                                  style: TextStyle(
                                    color: Color(0xffee2b7b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Free Shipping ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(
                                  text: '₱144.00',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffee2b7b),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Total Discount ₱64.00',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffee2b7b)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(
                            0xffff0167,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          'Check Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
