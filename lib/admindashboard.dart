import 'package:flutter/material.dart';
import 'adminperumahan.dart';
import 'adminwarisan.dart';
import 'landing.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardPage(),
    const AdminPerumahan(),
    const AdminWarisan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 3, 63),
        title: Row(
          children: [
            Image.asset(
              'assets/logoputih 1.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            Text(
              _selectedIndex == 0
                  ? 'Admin Dashboard'
                  : _selectedIndex == 1
                      ? 'Admin Perumahan'
                      : 'Admin Warisan',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LandingPage()),
              );
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Perumahan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Warisan',
          ),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Container Data Rumah
            _dataCard('Jumlah Data Rumah', '15', 'Jumlah Data Rumah Yang Tersedia'),

            const SizedBox(height: 20),

            // Container Data Warisan
            _dataCard('Jumlah Data Warisan', '15', 'Jumlah Data Warisan Yang Tersedia'),
          ],
        ),
      ),
    );
  }

  Widget _dataCard(String title, String count, String description) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 7, 58), // Warna hitam gelap
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 179, 179, 179), // Warna abu-abu
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Jumlah Data
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              count,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Deskripsi
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
