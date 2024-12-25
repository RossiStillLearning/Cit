import 'package:flutter/material.dart';
import 'landing.dart';
import 'tambahrumah.dart';
import 'editrumah.dart';
import 'detailrumah.dart';
import 'adminwarisan.dart';
import 'tambahwarisan.dart';
import 'editwarisan.dart';
import 'detailwarisan.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primaryColor: const Color(0xFF211951),
      ),
      initialRoute: '/', // Route awal
      routes: {
        '/': (context) => const LandingPage(), // Halaman utama
        '/tambahrumah': (context) => const TambahRumah(), // Halaman tambah rumah
        '/editrumah': (context) => const EditRumah(), // Halaman edit rumah
        '/detailrumah': (context) => const DetailRumah(),
        '/adminwarisan': (context) => const AdminWarisan(),
        '/tambahwarisan': (context) => const TambahWarisan(),
        '/editwarisan': (context) => const EditWarisan(),
        '/detailwarisan': (context) => const DetailWarisan(),// Halaman detail rumah
      },
    );
  }
}
