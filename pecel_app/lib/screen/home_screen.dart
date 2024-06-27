import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ---------------------------------------------------------------------------
    // TODO : MEMBUAT HALAMAN HOME PAGE
    // ---------------------------------------------------------------------------
    return Scaffold(
      appBar: AppBar(
        title: const Text('PECEL APP'),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
    );
  }
}
