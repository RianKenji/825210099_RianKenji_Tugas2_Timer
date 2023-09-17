import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  AboutMeState createState() => AboutMeState();
}

class AboutMeState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Container(
        color: Colors.white, // Ganti dengan warna latar belakang yang Anda inginkan
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              top: 10,
              child: Image.asset(
                'assets/FTI UNTAR.png', // Ganti dengan path logo1 Anda
                width: 150, // Sesuaikan ukuran sesuai kebutuhan Anda
                height: 60,
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Image.asset(
                'assets/Logo SI clear.png', // Ganti dengan path logo2 Anda
                width: 150, // Sesuaikan ukuran sesuai kebutuhan Anda
                height: 60,
              ),
            ),
            Center(
              child: Container(
                width: 300, height: 400,// Sesuaikan lebar sesuai kebutuhan Anda
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7), // Menggunakan warna putih dengan tingkat transparansi
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        'assets/pp.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Rian Kenji', // User's name
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat', // Use Montserrat font
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '825210099', // User's ID
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat', // Use Montserrat font
                      ),
                    ),
                    // Tambahkan informasi tambahan sesuai kebutuhan Anda di sini
                    // Misalnya, alamat email, nomor telepon, atau informasi lainnya
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}