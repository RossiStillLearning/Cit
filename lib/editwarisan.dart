import 'package:flutter/material.dart';

class EditWarisan extends StatefulWidget {
  const EditWarisan({super.key});

  @override
  State<EditWarisan> createState() => _EditWarisanState();
}

class _EditWarisanState extends State<EditWarisan> {
  // Dummy data awal
  final TextEditingController namaController =
      TextEditingController(text: "Angklung");
  final TextEditingController asalController =
      TextEditingController(text: "Jawa Barat");
  String imagePath = "assets/angklung.jpg"; // Placeholder gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Edit Warisan"),
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
                "Form Edit Warisan",
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

              // Input Asal
              TextField(
                controller: asalController,
                decoration: const InputDecoration(
                  labelText: "Asal",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Gambar Placeholder
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Gambar Warisan:",
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
                          // Logika mengganti gambar di sini
                          imagePath = "assets/angklung.jpg"; // Placeholder
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Data Warisan Telah Diperbarui"),
                      ),
                    );
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
