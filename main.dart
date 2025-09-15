import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Image Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List imageUrls = [
    'https://tse1.mm.bing.net/th/id/OIP.txuE2DOkLQERLM7C8xz6oQHaLH?r=0&rs=1&pid=ImgDetMain&o=7&rm=3=1',
    'https://tse1.explicit.bing.net/th/id/OIP.jBES73QTJBsiM6houqChWwHaEs?r=0&rs=1&pid=ImgDetMain&o=7&rm=3=2',
    'https://tse4.mm.bing.net/th/id/OIP.NNkOaOZ6KjkMiMiWKh0BGgHaE5?r=0&rs=1&pid=ImgDetMain&o=7&rm=3=3',
    'https://tse2.mm.bing.net/th/id/OIP.PphUfxj81uDHnui4TxqGiwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3=4',
    'https://tse4.mm.bing.net/th/id/OIP.MPHt4rWHkDUgXkAWcXzdYwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3=5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('My Photo Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                    imageUrls[index],
                    width: 400,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),

        Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Image Gallery',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            ),

            SizedBox(height: 8),
            Text('These Amazing Photos.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        ),

      ],
    ),
  );
  }
}
