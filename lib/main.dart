import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo GridView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo GridView'),
          backgroundColor: Colors.amber,
        ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          //title akan ditambahkan
          tile(Colors.blueAccent.shade400, 'demo_gridview/assets/icon/student.png', 'Kehadiran'),
          tile(Colors.greenAccent.shade400, 'demo_gridview/assets/icon/timetable.png', 'Jadwal Kuliah'), 
          tile(Colors.yellowAccent.shade400, 'demo_gridview/assets/icon/homeschooling.png', 'Tugas'),
          tile(Colors.redAccent.shade400, 'demo_gridview/assets/icon/check-list.png', 'Pengumuman'),
          tile(Colors.purpleAccent.shade400, 'demo_gridview/assets/icon/bestgrade.png', 'Nilai'),
          tile(Colors.tealAccent.shade400, 'demo_gridview/assets/icon/pencil.png', 'Catatan'),
        ],
      ),
      ),
    );
  }
}

ClipRRect tile (Color warnakotak, String gambar, String judul){
  return ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Container(
      color: warnakotak,
      child: GridTile(
        footer: SizedBox(
          height: 45,
          child: GridTileBar(
            backgroundColor: Colors.black38,
            title: Text(
              judul,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),          
        ),
        child: Image.asset(
          gambar,
         scale: 4,
      ),
    ),
    ),
  );
}

