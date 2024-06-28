import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pecel_app/screen/cart_screen.dart';
import 'package:pecel_app/screen/home_screen.dart';
import 'package:pecel_app/screen/menu_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyTabSelected(),

      // ================================================================================================
      // TODO : MEMBUAT FLOATING BUTTON BERBENTUK POLYGON DENGAN BANTIAN FLUUTER CLIP POLYGON
      // ================================================================================================
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
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

            // ==============================================================================================
            // TODO : KETIKA FLOATING BUTTON INI DIKLIK, MAKA AKAN MENGARAHKAN KE HALAMAN MENU SCREEN
            // ==============================================================================================
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MenuScreen();
              }));
            },
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

      // ================================================================================================
      // TODO : MEMBUAT BUTTON NAVIGATION
      // ================================================================================================
      bottomNavigationBar: BottomNavigationBar(
        // ================================================================================================
        // TODO :
        //-------------------------------------------------------------------------------------------------
        // SETIAP KALI BUTTON NAVIGATION DI PILIH, MAKA NILAI DARI VARIABLE TAB SELECTED AKAN DI PERBARUI
        // DAN AKAN DILAKUKAN PENGECEKAN DENGAN SWITH CASE UNTUK MENJALANKAN FUNGSI BERDASARKAN INDEX,
        //  INDEX DIMULAI DARI 0.
        // ================================================================================================
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

  Widget bodyTabSelected() {
    // ===============================================================================================
    // TODO : MENGGUNAKAN SWITCH CASE UNTUK MENJALANKAN FUNGSI BERDASARKAN INDEX
    // -----------------------------------------------------------------------------------------------
    // FUNGSI INI AKAN MEMANGGIL HALAMAN TERTENTU
    // JIKA TABSELECTED ADALAH 0, MAKA FUNGSI INI AKAN MENJALANKAN FUNGSI HOME SCREEN
    // ===============================================================================================
    switch (tabSelected) {
      case 0:
        return HomeScreen();
      case 1:
        return CartScreen();
      default:
        return const SizedBox();
    }
  }
}
