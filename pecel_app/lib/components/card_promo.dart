import 'package:flutter/material.dart';

class CardPromo extends StatefulWidget {
  final String title;
  final String description;

  const CardPromo({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _CardPromoState createState() => _CardPromoState();
}

class _CardPromoState extends State<CardPromo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pecel.jpg'),
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
        children: [
          Text(
            widget
                .title, // Menggunakan widget.title untuk mengakses properti title
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget
                .description, // Menggunakan widget.description untuk mengakses properti description
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
