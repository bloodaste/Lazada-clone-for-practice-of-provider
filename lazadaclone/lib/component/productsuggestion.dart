import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.network(
                    'https://i5.walmartimages.com/seo/Funko-POP-Movies-Harry-Potter-Severus-Snape_f76e9968-977b-4366-a0eb-a69565ea325f.57ce3e214391b4d0eed2b8494b8e7eba.jpeg'),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                    height: 30,
                    child: Image.network(
                        'https://www.shutterstock.com/image-illustration/free-delivery-service-logo-badge-260nw-2257568177.jpg')),
              )
            ],
          ),
          Text(
            'Jhonweak funko pop 14-inch with sticker',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '₱9,500.00',
            style: TextStyle(
              color: Color(0xfffa7f92),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Voucher Saves 200',
            style: TextStyle(
              color: Color(0xfffa7f92),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            spacing: 3,
            children: [
              Icon(
                Icons.star,
                color: Colors.amberAccent,
                size: 15,
              ),
              Text(
                '4.9(3)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '4K Sold',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
