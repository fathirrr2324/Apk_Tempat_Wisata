import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/detail_kampung_cai1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    'Kampung Cai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        '4.9 (2972 Reviews)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
             
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pesan Tiket Sekarang',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/kampung_cai.jpg',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rp 25.000',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Adventures Kampung Cai',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
              
                   Container(
              child: Align(
                  alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
              // Navigasi ke class Pembelian
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pembelian()),
                      );
                    },
                  child: Text('Pesan Tiket?'),
                ),
              ),
                   ),
                  // Add more content as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Pembelian extends StatefulWidget {
  @override
  _PembelianState createState() => _PembelianState();
}

class _PembelianState extends State<Pembelian> {
  final _UserController = TextEditingController();
  DateTime? _selectedDate;
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemesanan Tiket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _UserController,
              decoration: InputDecoration(labelText: 'User'),
            ),
            SizedBox(height: 20),
            
            // Ikon kalender di atas field tanggal
            Row(
            children:[
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Icon(Icons.calendar_today),
            ),
            SizedBox(width: 10), // Spasi antara ikon dan field
                Expanded(
                  child: TextField(
                    controller: _dateController,
                    decoration: InputDecoration(labelText: 'Tanggal'),
                    readOnly: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = '${_selectedDate!.toLocal()}'.split(' ')[0];
      });
    }
  }
}