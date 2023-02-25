import 'package:flutter/material.dart';
import './menu.dart';

class Kalku extends StatefulWidget {
  const Kalku({super.key});

  @override
  State<Kalku> createState() => _KalkuState();
}

class _KalkuState extends State<Kalku> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int? result=0, input1=0, input2=0;
  tambah(){
    setState(() {
      input1 = int.parse(num1.text);
      input2 = int.parse(num2.text);
      result = input1! + input2!;
    });
  }
  kurang(){
    setState(() {
      input1 = int.parse(num1.text);
      input2 = int.parse(num2.text);
      result = input1! - input2!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Penjumlahan Pengurangan'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Result: $result",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: num1,
                decoration: InputDecoration(
                    labelText: "Masukkan Angka Pertama",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                    labelText: "Masukkan Angka Kedua",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    tambah();
                    num1.clear();
                    num2.clear();
                  }, child: Text("Tambah")),
                  ElevatedButton(onPressed: (){
                    kurang();
                    num1.clear();
                    num2.clear();
                  }, child: Text("Kurang")),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            ));
                  }, 
                  child: Text("Kembali ke Menu Utama"),
                  style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.all(80),
                          minimumSize: Size(200, 40),
                          primary: Color.fromARGB(255, 235, 0, 0)),),
                ],
              )
            ],
          )),
    );
  }
}