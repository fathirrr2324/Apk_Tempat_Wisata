import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import halaman detail

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mau Liburan Kemana Hari Ini?'),
        leading: SizedBox(),//artinya menghilangkan button back di bagian kiri yang sudah di default scaffold
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
            child: Stack(
              children: [
                // Gambar sebagai latar belakang
                Image.asset(
                  'assets/farmhouselembang.jpg', // Link ke gambar
     
                ),
                // Text di atas gambar
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Klik untuk Detail Liburan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),                
              ],
            ),
          ),
          
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
            child: Stack(
              children: [
                // Gambar sebagai latar belakang
                Image.asset(
                  'asset/farmhouse.jpg', // Link ke gambar
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Text di atas gambar
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Klik untuk Detail Liburan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
