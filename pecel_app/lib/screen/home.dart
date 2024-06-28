import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pecel_app/components/btn_menu_header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabSelected = 0;

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PECEL APP'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CardSwiper(
                    allowedSwipeDirection:
                        AllowedSwipeDirection.only(left: true),
                    backCardOffset: Offset(0, 0),
                    padding: EdgeInsets.all(8.0),
                    cardsCount: cards.length,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
                        cards[index],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              children: [
                BtnMenuHeader(
                  title: 'Home',
                  icon: Icons.home,
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  width: 100,
                ),
                BtnMenuHeader(
                  title: 'Menu Terlaris',
                  icon: Icons.home,
                  onPressed: () {},
                  backgroundColor: Colors.red,
                  width: 50,
                ),
                BtnMenuHeader(
                  title: 'Minuman',
                  icon: Icons.home,
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.network(
                            'https://picsum.photos/250?image=9',
                            width: 90,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        size: 24, color: Colors.orangeAccent),
                                    Text('4.5'),
                                  ],
                                ),
                                Column(
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
