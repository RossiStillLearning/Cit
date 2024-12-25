import 'package:flutter/material.dart';

class AdminPerumahan extends StatelessWidget {
  const AdminPerumahan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/tambahrumah');
        },
        backgroundColor: const Color.fromARGB(255, 53, 3, 63),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PerumahanCard(
              id: '1',
              nama: 'Perumahan Indah',
              harga: '1200000000',
              luas: '150',
              deskripsi:
                  'Villa Taman Sari Merupakan Pilihan Tepat Untuk Anda Yang Mencari Hunian Dengan Suasana Resort.',
              kontak: '081312345678',
            ),
          ],
        ),
      ),
    );
  }
}

class PerumahanCard extends StatelessWidget {
  final String id;
  final String nama;
  final String harga;
  final String luas;
  final String deskripsi;
  final String kontak;

  const PerumahanCard({
    super.key,
    required this.id,
    required this.nama,
    required this.harga,
    required this.luas,
    required this.deskripsi,
    required this.kontak,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/rumah1.jpg', // Replace with your image asset path
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text('ID: $id', style: const TextStyle(fontWeight: FontWeight.bold)),
          Text('Nama: $nama'),
          Text('Harga: $harga'),
          Text('Luas: $luas'),
          const SizedBox(height: 5),
          Text(
            'Deskripsi: $deskripsi',
            style: const TextStyle(fontSize: 12),
          ),
          Text('Kontak: $kontak'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detailrumah');
                },
                icon: const Icon(Icons.info_outline),
                color: Colors.deepPurple,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/editrumah');
                },
                icon: const Icon(Icons.edit),
                color: Colors.deepPurple,
              ),
              IconButton(
                onPressed: () {
                  // Hapus data (logika hapus bisa ditambahkan)
                },
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
