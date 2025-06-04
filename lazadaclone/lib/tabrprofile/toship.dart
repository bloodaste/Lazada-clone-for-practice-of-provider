import 'package:flutter/material.dart';
import 'package:lazadaclone/component/allorder.dart';
import 'package:lazadaclone/model/allorderslist.dart';

class Toship extends StatelessWidget {
  const Toship({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Allorderslist> toship =
        allOrders.where((order) => order.orderstatus == 'To Ship').toList();
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemCount: toship.length,
      itemBuilder: (context, index) {
        final Toships = toship[index];
        return Allorder(
            price: Toships.price,
            priceaftervoucher: Toships.priceaftervoucher,
            productimage: Toships.image,
            productname: Toships.productname,
            productstatus: Toships.orderstatus,
            sellername: Toships.sellername,
            qtn: Toships.quantity);
      },
    );
  }
}
