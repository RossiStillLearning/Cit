import 'package:flutter/material.dart';
import 'userperumahan.dart';
import 'userwarisan.dart';
import 'landing.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _currentIndex = 0;

  // Daftar halaman yang akan ditampilkan berdasarkan index
  final List<Widget> _pages = [
    const DashboardPage(),
    const UserPerumahan(),
    const UserWarisan(),
  ];

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
            const Text(
              'CityNest',
              style: TextStyle(color: Colors.white),
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
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 53, 3, 63),
        unselectedItemColor: Colors.grey,
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
          children: <Widget>[
            const SizedBox(height: 20),

            // Container Selamat Datang dengan Gambar
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Selamat Datang di CityNest',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/kota.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Container Apa Itu CityNest?
            buildInfoContainer(
              title: 'Apa Itu CityNest?',
              content:
                  '"CityNest" adalah gabungan kata "City" (kota) dan "Nest" (sarang), menggambarkan sebuah kota yang menyediakan hunian aman, nyaman, dan inklusif. Ini melambangkan tempat di mana penghuni dapat menemukan perumahan layak dalam lingkungan yang ramah dan berkelanjutan.',
            ),

            const SizedBox(height: 20),

            // Container Manfaat CityNest
            buildInfoContainer(
              title: 'Manfaat CityNest',
              content:
                  'CityNest adalah platform digital untuk mengintegrasikan inisiatif perumahan yang layak dan berkelanjutan. Ini mendorong urbanisasi inklusif dengan keterlibatan masyarakat dan kolaborasi berbagai pihak untuk menciptakan lingkungan perkotaan yang ramah dan sejahtera.',
            ),

            const SizedBox(height: 30),

            // Fasilitas
            const Text(
              'Fasilitas',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                fasilitasCard(
                  icon: Icons.attach_money,
                  title: 'Harga Terjangkau',
                  description:
                      'Nikmati hunian berkualitas dengan harga yang sesuai dengan anggaran Anda.',
                ),
                const SizedBox(height: 10),
                fasilitasCard(
                  icon: Icons.public,
                  title: 'Lingkungan Nyaman',
                  description:
                      'Suasana asri dengan ruang terbuka hijau dan fasilitas lengkap.',
                ),
                const SizedBox(height: 10),
                fasilitasCard(
                  icon: Icons.security,
                  title: 'Tempat Aman',
                  description:
                      'Dilengkapi sistem keamanan 24/7 dan bebas dari risiko bencana.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget Informasi dengan Container
  Widget buildInfoContainer({
    required String title,
    required String content,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Teks Judul
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 10),

          // Teks Isi
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  // Widget Fasilitas Card
  Widget fasilitasCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: Colors.deepPurple,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
