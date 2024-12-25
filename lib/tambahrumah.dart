import 'package:flutter/material.dart';

class TambahRumah extends StatelessWidget {
  const TambahRumah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Rumah'),
        backgroundColor: Color(0xFF211951),
        foregroundColor: Colors.white, // Mengubah warna font menjadi putih
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Form Tambah Rumah',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF211951),
                  ),
                ),
                const SizedBox(height: 20),

                // Input Nama
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                // Input Harga
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Harga',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                // Input Luas
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Luas',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                // Input Deskripsi
                TextField(
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Deskripsi',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                // Input Kontak
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Kontak',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                // Upload Foto
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Fungsi kosong (frontend only)
                      },
                      icon: const Icon(Icons.photo_library),
                      label: const Text('Pilih Gambar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF211951),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('Belum ada Gambar'),
                  ],
                ),
                const SizedBox(height: 20),

                // Tombol Simpan
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Fungsi kosong (frontend only)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF211951),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                    ),
                    child: const Text(
                      'Tambah',
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
      ),
    );
  }
}
