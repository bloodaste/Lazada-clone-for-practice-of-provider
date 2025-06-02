import 'package:flutter/material.dart';

class Channelcomponent extends StatefulWidget {
  const Channelcomponent({
    super.key,
    required this.footer,
    required this.image,
    required this.header,
    required this.divcoler,
  });
  final String header;
  final String image;
  final Color divcoler;
  final String footer;

  @override
  State<Channelcomponent> createState() => _ChannelcomponentState();
}

class _ChannelcomponentState extends State<Channelcomponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: widget.divcoler,
      ),
      child: Column(
        spacing: 6,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.header,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.chevron_right)
            ],
          ),
          SizedBox(
            height: 90,
            width: 100,
            child: Image.network(
              fit: BoxFit.cover,
              widget.image,
            ),
          ),
          Text(
            widget.footer,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
