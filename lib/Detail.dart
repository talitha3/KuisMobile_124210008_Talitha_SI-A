import 'package:flutter/material.dart';
import 'package:kuis_mobile/disease_data.dart';

class Detail extends StatelessWidget {
  final Diseases plant;
  const Detail({Key? key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Detail Desiases"),
        backgroundColor: Colors.green, // Ubah warna latar belakang appbar

      ),
      body: ListView(
        padding: EdgeInsets.all(20.0), // Tambahkan padding pada konten
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(plant.imgUrls),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0), // Tambahkan border radius
            ),
          ),

          SizedBox(height: 20.0), // Tambahkan jarak antara gambar dan teks
          Text(
            plant.name,
            style: TextStyle(

              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0), // Tambahkan jarak antara teks
          Text(
            plant.name,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0), // Tambahkan jarak antara teks
          Text(
            plant.plantName,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0), // Tambahkan jarak antara teks
          Text(
            plant.nutshell[0],
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0), // Tambahkan jarak antara teks
          Text(
            plant.id,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0), // Tambahkan jarak antara teks
          Text(
            plant.symptom,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
