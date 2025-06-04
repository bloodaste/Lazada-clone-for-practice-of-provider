import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({super.key});

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemCount: allOrders.length,
      itemBuilder: (context, index) {
        final orders = allOrders[index];
        return Allorder(
          price: orders.price,
          priceaftervoucher: orders.priceaftervoucher,
          productimage: orders.image,
          productname: orders.productname,
          productstatus: orders.orderstatus,
          sellername: orders.sellername,
          qtn: orders.quantity,
        );
      },
    );
  }
}
