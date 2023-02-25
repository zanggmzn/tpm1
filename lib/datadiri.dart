import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 187, 187),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "DATA KELOMPOK",
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "images/math.png",
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "images/math.png",
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "images/math.png",
              width: 60.0,
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
