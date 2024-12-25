import 'package:flutter/material.dart';

class TambahWarisan extends StatefulWidget {
  const TambahWarisan({super.key});

  @override
  State<TambahWarisan> createState() => _TambahWarisanState();
}

class _TambahWarisanState extends State<TambahWarisan> {
  String imagePath = "Belum ada Gambar"; // Default text jika gambar belum dipilih

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Tambah Warisan"),
        backgroundColor: Color(0xFF211951),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Form
            const Text(
              "Form Tambah Warisan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            // Input Nama
            TextField(
              decoration: InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Input Harga
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Asal",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Pilih Gambar
            Row(
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF211951),
                  ),
                  onPressed: () {
                    setState(() {
                      imagePath = "Gambar dipilih!"; // Dummy untuk simulasi
                    });
                  },
                  icon: const Icon(Icons.image, color: Colors.white),
                  label: const Text(
                    "Pilih Gambar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  imagePath,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Tombol Tambah
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF211951),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 40,
                  ),
                ),
                onPressed: () {
                  // Tambahkan logika untuk submit form
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Data Warisan Ditambahkan")),
                  );
                },
                child: const Text(
                  "Tambah",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
