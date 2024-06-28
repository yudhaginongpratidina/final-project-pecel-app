// card_promo.dart

import 'package:flutter/material.dart';

class CardPromo extends StatefulWidget {
  const CardPromo({Key? key}) : super(key: key);

  @override
  _CardPromoState createState() => _CardPromoState();
}

class _CardPromoState extends State<CardPromo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/pecel.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      height: 180,
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Promo 20%',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Untuk 10 Pembeli Pertama',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
