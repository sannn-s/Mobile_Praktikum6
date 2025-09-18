import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Bar Example',
      theme: ThemeData.dark(), 
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Pemutar Musik',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        color: Colors.black54, 
        child: Row(
          children: [
            
            const Expanded(
              child: Icon(Icons.shuffle, color: Colors.white, size: 32),
            ),
          
            const Expanded(
              child: Icon(Icons.skip_previous, color: Colors.white, size: 32),
            ),
           
            const Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Icon(Icons.play_circle_fill, color: Colors.white, size: 48),
            ),
           
            const Expanded(
              child: Icon(Icons.skip_next, color: Colors.white, size: 32),
            ),
            
            const Expanded(
              child: Icon(Icons.repeat, color: Colors.white, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
