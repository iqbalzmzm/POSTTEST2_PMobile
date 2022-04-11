import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.more_vert_outlined),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "WindBreaker",
          style: GoogleFonts.pacifico(),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                      Colors.grey,
                      Colors.black87,
                    ])),
                child: Container(
                  margin: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/kalori.png"),
                    ),
                  ),
                ),
              ),
              MyButton(),
              Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/pemandangan.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  padding: EdgeInsets.only(right: 220, top: 80),
                  child: Text("Lihat kondisi cuaca di daerah anda.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ))),
              SizedBox(height: 30),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/stretching.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  padding: EdgeInsets.only(left: 220, top: 80),
                  child: Text("Lakukan pemanasan sebelum bersepeda.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ))),
              SizedBox(height: 30),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/kalender.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  padding: EdgeInsets.only(right: 220, top: 80),
                  child: Text("Tentukan tanggal & waktu anda bersepeda.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ))),
              SizedBox(height: 30),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/sepeda.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  padding: EdgeInsets.only(left: 220, top: 80),
                  child: Text("Ayo Bersepeda!!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      )))
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Cek Statisik",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
