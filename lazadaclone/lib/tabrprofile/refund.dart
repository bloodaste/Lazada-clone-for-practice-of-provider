import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Refund extends StatelessWidget {
  const Refund({super.key});

  @override
  Widget build(BuildContext context) {
    List<Allorderslist> refund = allOrders
        .where((order) => order.orderstatus == 'Refund/Return')
        .toList();
    return ListView.builder(
      itemCount: refund.length,
      itemBuilder: (context, index) {
        final ref = refund[index];

        return Allorder(
            price: ref.price,
            priceaftervoucher: ref.priceaftervoucher,
            productimage: ref.image,
            productname: ref.productname,
            productstatus: ref.orderstatus,
            sellername: ref.sellername,
            qtn: ref.quantity);
      },
    );
  }
}
