import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:karna/Pages/last_to_db.dart';
import 'package:lottie/lottie.dart';

class StartTest extends StatefulWidget {
  const StartTest({super.key});

  @override
  State<StartTest> createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade600,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple.shade600,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Lottie.asset('assets/done.json',
                    repeat: true, reverse: true),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple.shade600,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    "All done start test",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            ),
            onPressed: () {
              Get.to(() => const ToDataBase());
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.black),
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
