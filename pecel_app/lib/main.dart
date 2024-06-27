import 'package:flutter/material.dart';
import 'package:pecel_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ------------------------------------------------------------------------------------
  // ROOT APP
  // ------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS PAPB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // -------------------------------------------------------------------------------
      // HALAMAN YANG PERTAMA KALI DI TAMPILKAN
      // -------------------------------------------------------------------------------
      home: const HomeScreen(),
    );
  }
}
