import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/Pages/manikin.dart';
import 'package:lottie/lottie.dart';

class EarPage extends StatelessWidget {
  const EarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Lottie.asset('assets/listening-music.json',
                    repeat: true, reverse: true),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Connect your earphones and set volume based your earing prefrences",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            ),
            onPressed: () {
              Get.to(() => const StartPage());
            },
            child: Text("Next"),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
