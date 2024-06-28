import 'package:flutter/material.dart';

class CardMenuPilihan extends StatefulWidget {
  final String image;
  final double rating;
  final String title;
  final String description;

  const CardMenuPilihan({
    Key? key,
    required this.image,
    required this.rating,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _CardMenuPilihanState createState() => _CardMenuPilihanState();
}

class _CardMenuPilihanState extends State<CardMenuPilihan> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Image.asset(
              widget.image,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Colors.orange,
                    child: Row(
                      children: [
                        const Icon(Icons.star, size: 20),
                        const SizedBox(width: 4),
                        Text(widget.rating.toString()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.description,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
