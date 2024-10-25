import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import halaman detail

class HomePage extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ), 
      body: InkWell(
        onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) {
    return DetailScreen();
         }
            )
              );
              },
       child: Card(
         child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
            flex: 8,
            child: Image.asset(
                    'assets/farmhouse.jpg' ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Farm House Lembang',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Lembang'),
                ],
              ),
            )
          ],
        ),    
      ),
    ),
    );
  }
}