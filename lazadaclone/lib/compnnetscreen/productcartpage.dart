import 'package:flutter/material.dart';

class Productcartpage extends StatefulWidget {
  const Productcartpage({
    super.key,
    required this.sellername,
    required this.productName,
    required this.isLazMall,
    required this.productImage,
    required this.isDiscounted,
    required this.discountedPrice,
    required this.notDiscountedPrice,
    required this.productSelected,
  });
  final String sellername;
  final String productName;
  final bool isLazMall;
  final String productImage;
  final bool isDiscounted;
  final String discountedPrice;
  final String notDiscountedPrice;
  final String productSelected;
  @override
  State<Productcartpage> createState() => _ProductcartpageState();
}

class _ProductcartpageState extends State<Productcartpage> {
  bool ishceck = false;
  int itemcount = 0;

  void additemcount() {
    setState(() {
      itemcount++;
    });
  }

  void minusitemcount() {
    setState(() {
      if (itemcount > 0) {
        itemcount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: ishceck,
                onChanged: (value) {
                  setState(() {
                    ishceck = value ?? false;
                  });
                },
              ),
              widget.isLazMall
                  ? Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color(0xffc60b11),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Lazmall',
                        style: TextStyle(
                            fontSize: 7,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  : SizedBox(),
              const SizedBox(width: 5),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      widget.sellername,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              if (widget.isLazMall)
                Row(
                  children: const [
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
                ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Checkbox(
                  value: ishceck,
                  onChanged: (value) {
                    setState(() {
                      ishceck = value ?? false;
                    });
                  },
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.network(
                    widget.productImage,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productName,
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
                            widget.productSelected,
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
                      const SizedBox(height: 5),
                      widget.isDiscounted
                          ? RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: widget.discountedPrice,
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
                            )
                          : SizedBox(),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widget.isDiscounted
                              ? Text(
                                  widget.notDiscountedPrice,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              : Text(
                                  widget.notDiscountedPrice,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: minusitemcount,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xfff8f9fd),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                    '—',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff8f9fd),
                                ),
                                child: Text(
                                  '$itemcount',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ),
                              GestureDetector(
                                onTap: additemcount,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xfff8f9fd),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
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
