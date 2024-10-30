import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import halaman detail

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
     appBar: AppBar(
        title: const Text('Travelya'),
        automaticallyImplyLeading: false,
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
                    'assets/kampung_cai.jpg' ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Kampung Cai Ranca Upas',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Rancabali'),
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