import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pecel_app/components/btn_menu_header.dart';
import 'package:pecel_app/components/card_promo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                        const CardPromo(),
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
                  width: 50,
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
                  (index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/pecel2.jpg',
                            width: 90,
                            height: 90,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.orange,
                                  width: size.width - 120,
                                  child: const Row(
                                    children: [
                                      Icon(Icons.star, size: 20),
                                      Text('4.5'),
                                    ],
                                  ),
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pecel Sambel Tumpang',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Pecel, Sambel, Telur Bali'),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 84,
        height: 84,
        child: FlutterClipPolygon(
          sides: 6,
          borderRadius: 5.0,
          rotate: 60.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.book,
                  size: 24,
                ),
                Text('Menu'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabSelected,
        onTap: (value) {
          setState(() {
            tabSelected = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 24,
            ),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_cart,
              size: 24,
            ),
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
        ],
      ),
    );
  }
}
