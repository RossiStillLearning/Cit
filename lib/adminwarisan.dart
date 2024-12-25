import 'package:flutter/material.dart';

class AdminWarisan extends StatelessWidget {
  const AdminWarisan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/tambahwarisan');
        },
        backgroundColor: const Color.fromARGB(255, 53, 3, 63),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container Data
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar
                  Image.asset('assets/angklung.jpg'),
                  const SizedBox(height: 10),
                  const Text(
                    'ID : 1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Nama : Angklung',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Asal : Jawa Barat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Tombol Detail, Edit, Hapus
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detailwarisan');
                        },
                        icon: const Icon(Icons.info_outline),
                        color: Colors.deepPurple,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/editwarisan');
                        },
                        icon: const Icon(Icons.edit),
                        color: Colors.deepPurple,
                      ),
                      IconButton(
                        onPressed: () {
                          // Tambahkan logika hapus di sini
                        },
                        icon: const Icon(Icons.delete),
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
