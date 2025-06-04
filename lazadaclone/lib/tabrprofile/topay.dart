import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Topay extends StatelessWidget {
  const Topay({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Allorderslist> topayorders =
        allOrders.where((order) => order.orderstatus == 'To Pay').toList();

    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemCount: topayorders.length,
      itemBuilder: (context, index) {
        final topay = topayorders[index];
        return Allorder(
            price: topay.price,
            priceaftervoucher: topay.priceaftervoucher,
            productimage: topay.image,
            productname: topay.productname,
            productstatus: topay.orderstatus,
            sellername: topay.sellername,
            qtn: topay.quantity);
      },
    );
  }
}
