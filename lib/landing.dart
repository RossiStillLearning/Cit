import 'package:flutter/material.dart';
import 'login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background tetap putih
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Lokal
              Container(
                width: 300, // Perbesar ukuran logo (width)
                height: 300, // Perbesar ukuran logo (height)
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/kota.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Title
              const Text(
                'CityNest',
                style: TextStyle(
                  color: Color(0xFF211951), // Warna teks tetap
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Paragraph
              const Text(
                '"CityNest" adalah gabungan kata "City" (kota) dan "Nest" (sarang),menggambarkan sebuah kota yang menyediakan hunian aman, nyaman, dan inklusif. Ini melambangkan tempat di mana penghuni dapat menemukan perumahan layak dalam lingkungan yang ramah dan berkelanjutan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87, // Warna teks kontras
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Button
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman login
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF211951),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
