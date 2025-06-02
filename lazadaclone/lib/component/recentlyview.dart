import 'package:flutter/material.dart';

class Recentlyview extends StatefulWidget {
  const Recentlyview({
    super.key,
    required this.price,
    required this.url,
  });
  final String url;
  final String price;
  @override
  State<Recentlyview> createState() => _RecentlyviewState();
}

class _RecentlyviewState extends State<Recentlyview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 96,
            child: Image.network(
              fit: BoxFit.fitWidth,
              scale: 10,
              widget.url,
            ),
          ),
          Row(
            children: [
              Text(
                widget.price,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffeb5b73)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
