import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Toreview extends StatelessWidget {
  const Toreview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Allorderslist> toreview =
        allOrders.where((order) => order.orderstatus == 'To Review').toList();
    return ListView.builder(
      itemCount: toreview.length,
      itemBuilder: (context, index) {
        final review = toreview[index];
        return Allorder(
          price: review.price,
          priceaftervoucher: review.priceaftervoucher,
          productimage: review.image,
          productname: review.productname,
          productstatus: review.orderstatus,
          sellername: review.sellername,
          qtn: review.quantity,
        );
      },
    );
  }
}
