import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {  
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Bagian gambar utama
              SizedBox(height: 10 ),
              Container(
                // width: 80, // Mengatur lebar container agar memenuhi lebar layar
                // height: 258, // Mengatur tinggi gambar
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(5), // Mengatur radius sudut
                 
                // ),
                child: ClipRRect(
                   // Memastikan gambar mengikuti bentuk sudut
                  child: Image.asset(
                    'assets/farmhouse.jpg'
                  ),
                ),
              ),
              // Bagian judul
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              // Bagian informasi ikon dan teks
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 9.0),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 9.0),
                      
                        Text('08-00  WIB - 18-00 WIB'),

                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(height: 9.0),
                        Text('Rp 25.000'),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Bagian deskripsi
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              
              // Bagian galeri gambar dengan scroll horizontal
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Container(
                        decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(10.0),
                              ),
                              margin: const EdgeInsets.all(5.0),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                      
                    ),
                    Container(
                        decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(10.0),
                              ),
                              margin: const EdgeInsets.all(5.0),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(10.0),
                              ),
                              margin: const EdgeInsets.all(5.0),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(10.0),
                              ),
                              margin: const EdgeInsets.all(5.0),
                      child: Image.network(
                        'https://th.bing.com/th?id=OIP.pyhaEt1fsjgogOLYD1MRsQHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children:  <Widget>[
              //       Container(
              //        child:  Image.network('https://www.bing.com/images/search?view=detailV2&ccid=5mCFFoLm&id=BE909DD905540A2DA9771F05CAF1AD9AD28A754B&thid=OIP.5mCFFoLmnhD7rm98cfOxbwHaEK&mediaurl=https%3a%2f%2ft-2.tstatic.net%2ftribunnewswiki%2ffoto%2fbank%2fimages%2fFarmhouse-Lembang.jpg&exph=393&expw=700&q=farmhouse+lembang&simid=608009315237766710&FORM=IRPRST&ck=0D5495A53BB13A8B872922FC5CF53E90&selectedIndex=14&itb=0'),
              //          decoration: BoxDecoration(
              //                border: Border.all(color: Colors.black),
              //                borderRadius: BorderRadius.circular(10.0),
              //                 ),
              //       ),
                    
              //       Container(
              //          decoration: BoxDecoration(
              //                border: Border.all(color: Colors.black),
              //                borderRadius: BorderRadius.circular(10.0),
              //                 ),
              //        child:  Image.network('https://www.bing.com/images/search?view=detailV2&ccid=5mCFFoLm&id=BE909DD905540A2DA9771F05CAF1AD9AD28A754B&thid=OIP.5mCFFoLmnhD7rm98cfOxbwHaEK&mediaurl=https%3a%2f%2ft-2.tstatic.net%2ftribunnewswiki%2ffoto%2fbank%2fimages%2fFarmhouse-Lembang.jpg&exph=393&expw=700&q=farmhouse+lembang&simid=608009315237766710&FORM=IRPRST&ck=0D5495A53BB13A8B872922FC5CF53E90&selectedIndex=14&itb=0'),
              //       ),

              //     ],
              //   ),
              // ),
              SizedBox(height: 84,),
              
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
            ],
          ),
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