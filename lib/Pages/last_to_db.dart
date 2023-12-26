import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:karna/Pages/feedback.dart';
import 'package:karna/getdata/userdata.dart';
import 'package:lottie/lottie.dart';

class ToDataBase extends StatefulWidget {
  const ToDataBase({super.key});

  @override
  State<ToDataBase> createState() => _ToDataBaseState();
}

final UserData udata = Get.put(UserData());

TextEditingController db = TextEditingController();

Future<void> insertRecord() async {
  if (udata.userName != "" ||
      udata.userGender != "" ||
      udata.userContact != "" ||
      db.text != "") {
    try {
      String uri = "https://atrakarnaaapi.000webhostapp.com/insert_record.php";
      var res = await http.post(Uri.parse(uri), body: {
        "name": udata.userName,
        "contact": udata.userContact,
        "db": db.text,
        "gender": udata.userGender,
      });
      var response = jsonDecode(res.body);
      if (response["Success"] == "true") {
        print("record inserted");
      } else {
        print("failed try again");
      }
    } catch (e) {
      print("$e error in api");
    }
  } else {
    print("fill all forms");
  }
}

class _ToDataBaseState extends State<ToDataBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 90),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "WAIT...! for 10sec and entry the value displayed on Manikin Screen...",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Lottie.asset('assets/send.json', repeat: true, reverse: true),
              TextField(
                controller: db,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  label: Text(
                    "db value",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  insertRecord();
                  db.clear();
                  Get.to(() => const FeedBack());
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
