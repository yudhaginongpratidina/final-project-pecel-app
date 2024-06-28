import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pecel_app/components/btn_menu_header.dart';
import 'package:pecel_app/components/card_menu_pilihan.dart';
import 'package:pecel_app/components/card_promo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CardSwiper(
                    maxAngle: 0.0,
                    allowedSwipeDirection:
                        const AllowedSwipeDirection.only(left: true),
                    backCardOffset: const Offset(0, 0),
                    padding: const EdgeInsets.all(2.0),
                    cardsCount: 5,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
                        const CardPromo(
                      title: 'Promo 20%',
                      description: 'Untuk 10 Pembeli Pertama',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              children: [
                BtnMenuHeader(
                  title: 'Home',
                  icon: FontAwesomeIcons.bowlRice,
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  width: 100,
                ),
                BtnMenuHeader(
                  title: 'Menu Terlaris',
                  icon: FontAwesomeIcons.utensils,
                  onPressed: () {},
                  backgroundColor: Colors.red,
                  width: 120,
                ),
                BtnMenuHeader(
                  title: 'Minuman',
                  icon: FontAwesomeIcons.mugHot,
                  onPressed: () {},
                  backgroundColor: Colors.blue,
                  width: 100,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Menu Pilihan',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  7,
                  (index) => const CardMenuPilihan(
                    image: 'assets/images/pecel2.jpg',
                    rating: 4.5,
                    title: 'Pecel Sambel Tumpang',
                    description: 'Pecel, Sambel, Telur Bali',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
