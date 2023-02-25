import 'package:flutter/material.dart';
import './kalkulator.dart';
import './datadiri.dart';

//tidak perlu main krn di main.dart
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu Utama Maths'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
            padding: EdgeInsets.all(120), //biar ga ketutupan card
            //infinity mengikuti ukuran layar
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 192, 93, 120),
                  Color.fromARGB(255, 115, 92, 158)
                ])),
            child: Card(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Selamat Datang Math!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Silahkan Pilih Menu Dibawah',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      //kondisi saat klik button login
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Data(),
                            ));
                      },
                      child: Text('Data Diri Kelompok'),
                      style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.all(80),
                          minimumSize: Size(300, 40),
                          primary: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      //kondisi saat klik button login
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Kalku(),
                            ));
                      },
                      child: Text('Kalkulator Sederhana'),
                      style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.all(20),
                          minimumSize: Size(300, 40),
                          primary: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ]),
                )
              ]),
            )));
  }
}
