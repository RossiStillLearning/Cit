import 'package:flutter/material.dart';
import 'register.dart';
import 'admindashboard.dart';
import 'userdashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

              // Judul
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 53, 3, 63),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Logo
              Center(
                child: Image.asset(
                  'assets/Group 2.png', // Ubah sesuai dengan path logo Anda
                  height: 300,
                ),
              ),
              const SizedBox(height: 40),

              // Form Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Form Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Login
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;

                  if (email.endsWith('@admin.com')) {
                    // Arahkan ke AdminDashboard jika email mengandung @admin.com
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminDashboard()),
                    );
                  } else if (email.endsWith('@gmail.com')) {
                    // Arahkan ke UserDashboard jika email mengandung @gmail.com
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const UserDashboard()),
                    );
                  } else {
                    // Tampilkan pesan error jika format email tidak sesuai
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Email tidak valid.')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 3, 63),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),

              // Text Buat Akun
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
                child: const Text(
                  'Belum punya akun? Register',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 53, 3, 63),
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
