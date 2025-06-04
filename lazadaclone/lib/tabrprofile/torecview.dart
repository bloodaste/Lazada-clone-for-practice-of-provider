import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Torecview extends StatelessWidget {
  const Torecview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Allorderslist> toreiecve =
        allOrders.where((order) => order.orderstatus == 'Pending').toList();
    return ListView.builder(
      itemCount: toreiecve.length,
      itemBuilder: (context, index) {
        final toreiv = toreiecve[index];
        return Allorder(
            price: toreiv.price,
            priceaftervoucher: toreiv.priceaftervoucher,
            productimage: toreiv.image,
            productname: toreiv.productname,
            productstatus: toreiv.orderstatus,
            sellername: toreiv.sellername,
            qtn: toreiv.quantity);
      },
    );
  }
}
