import 'package:flutter/material.dart';
import './menu.dart';

//void untuk panggil desain halaman utama
void main() {
  //buat material app untuk halaman utama
  runApp(const MaterialApp(
    //berisi baris code halaman utama
    title: 'Latihan Login',
    home: HalamanUtama(), //class yang akan dipanggil
    debugShowCheckedModeBanner: false,
  ));
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  bool visibilityPass = false; //variabel hide pass or not
  final String user = 'admin';
  final String pass = 'admin123';

  TextEditingController cUser =
      TextEditingController(text: 'admin'); // ambil nilai fill user
  TextEditingController cPass =
      TextEditingController(text: 'admin123'); // ambil nilai fill pas
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 192, 93, 120),
              Color.fromARGB(255, 115, 92, 158)
            ],
          ),
        ),
        // child card untuk membuat form bingkai login
        // child diusahakan adalah sebuah widget yg punya children agar dapat membuat dekorasi didalamnya (fill box)
        child: SingleChildScrollView(
          child: Container(
            height: 450,
            margin: const EdgeInsets.fromLTRB(50, 150, 50, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/math.png'),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    TextField(
                      controller: cUser,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'Username',
                        hintText: 'Input Username Anda',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: cPass,
                      obscureText: true, //agar pass tidak tampak
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'Password',
                        hintText: 'Input Password Anda',
                        prefixIcon: Icon(Icons.key),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      //kondisi saat klik button login
                      onPressed: () {
                        checkLogic(context);
                      },
                      child: Text('L O G I N'),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogic(BuildContext context) {
    if (cUser.text == user && cPass.text == pass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Menu(),
          ));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Berhasil!'),
          backgroundColor: Colors.blue,
        ),
      );
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username atau Password Harus Diisi!'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username dan Password Anda Salah!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
