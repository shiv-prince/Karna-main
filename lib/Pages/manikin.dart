import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karna/Pages/starttest.dart';
import 'package:lottie/lottie.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.greenAccent,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Lottie.asset('assets/robot.json',
                    repeat: true, reverse: true),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Connect your phone to the headphone jack and connect one side of earphone to the manneqin's dedicated slot.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
            ),
            onPressed: () {
              Get.to(() => const StartTest());
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
