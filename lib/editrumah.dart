import 'package:flutter/material.dart';

class EditRumah extends StatefulWidget {
  const EditRumah({super.key});

  @override
  State<EditRumah> createState() => _EditRumahState();
}

class _EditRumahState extends State<EditRumah> {
  // Dummy data awal
  final TextEditingController namaController =
      TextEditingController(text: "Rumah Contoh");
  final TextEditingController hargaController =
      TextEditingController(text: "500000000");
  final TextEditingController luasController =
      TextEditingController(text: "120 m²");
  final TextEditingController deskripsiController =
      TextEditingController(text: "Rumah nyaman dengan desain modern minimalis.");
  final TextEditingController kontakController =
      TextEditingController(text: "081234567890");

  String imagePath = "assets/rumah1.jpg"; // Placeholder gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Edit Rumah"),
        backgroundColor: Color(0xFF211951),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Form Edit Rumah",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),

              // Input Nama
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: "Nama",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input Harga
              TextField(
                controller: hargaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Harga",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input Luas
              TextField(
                controller: luasController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Luas",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input Deskripsi
              TextField(
                controller: deskripsiController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: "Deskripsi",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input Kontak
              TextField(
                controller: kontakController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Kontak",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Gambar Placeholder
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Gambar Rumah:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      imagePath,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF211951),
                      ),
                      onPressed: () {
                        setState(() {
                          // Logika mengganti gambar
                          imagePath = "assets/rumah1.jpg"; // Simulasi placeholder
                        });
                      },
                      icon: const Icon(Icons.image, color: Colors.white),
                      label: const Text(
                        "Ganti Gambar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Simpan
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
                    // Simulasi penyimpanan data
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Data Rumah Telah Diperbarui"),
                      ),
                    );
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
