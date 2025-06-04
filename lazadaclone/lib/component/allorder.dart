import 'package:flutter/material.dart';

class Allorder extends StatefulWidget {
  final String productname;
  final String productimage;
  final String price;
  final String qtn;
  final String priceaftervoucher;
  final String productstatus;
  final String sellername;

  const Allorder({
    super.key,
    required this.price,
    required this.priceaftervoucher,
    required this.productimage,
    required this.productname,
    required this.productstatus,
    required this.sellername,
    required this.qtn,
  });

  @override
  State<Allorder> createState() => _AllorderState();
}

class _AllorderState extends State<Allorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // Note: Row doesn’t have a spacing parameter. Use SizedBox or Wrap for spacing.
                children: [
                  Icon(Icons.store_outlined),
                  SizedBox(width: 5), // add spacing manually
                  Text(
                    widget.sellername,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5), // spacing before chevron
                  Icon(Icons.chevron_right_rounded),
                ],
              ),
              Container(
                child: Text(
                  widget.productstatus,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            // Again, Row doesn't have spacing param
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  widget.productimage,
                  scale: 2,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error);
                  },
                ),
              ),
              SizedBox(width: 10), // spacing between image and column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        widget.productname,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: true,
                        maxLines: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.price,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Qty: ${widget.qtn}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Total(${widget.qtn} items): ${widget.priceaftervoucher}'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'More',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Refund/Refund',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 5), // spacing between buttons
                  widget.productstatus == 'Completed'
                      ? Container(
                          decoration: BoxDecoration(
                              color: Color(0xffd55a93),
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'Order Recieve',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : widget.productstatus == 'Cancelled'
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffd55a93),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                'Buy Again',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffd55a93),
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffd55a93),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                'To Review',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffd55a93),
                                ),
                              ),
                            ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
