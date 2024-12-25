import 'package:flutter/material.dart';

class DetailRumah extends StatelessWidget {
  // Data Dummy untuk Detail Rumah
  //final String id = '1';
  final String nama = 'Perumahan Indah';
  final String harga = '1,200,000,000';
  final String luas = '150';
  final String deskripsi =
      'Villa Taman Sari Merupakan Pilihan Tepat Untuk Anda Yang Mencari Hunian Dengan Suasana Resort.';
  final String kontak = '081312345678';

  const DetailRumah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Rumah'),
        backgroundColor: Color(0xFF211951),
        foregroundColor: Colors.white, // Mengubah warna font menjadi putih
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar Rumah
              Image.asset(
                'assets/rumah1.jpg', // Ganti dengan path gambar rumah yang sesuai
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              const SizedBox(height: 20),

              // Informasi Detail Rumah
              //Text(
                //'ID: $id',
                //style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              //),
              Text(
                'Nama: $nama',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Harga: Rp $harga',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Luas: $luas m²',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Deskripsi Rumah
              const Text(
                'Deskripsi:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                deskripsi,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),

              // Kontak Pemilik Rumah
              const Text(
                'Kontak Pemilik:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                kontak,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Tombol Kembali
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF211951),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Kembali',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
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
