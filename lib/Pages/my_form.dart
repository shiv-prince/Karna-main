import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:karna/Pages/bottombar.dart';
import 'package:karna/Pages/ear_phone.dart';
import 'package:karna/Pages/topbar.dart';
import 'package:karna/getdata/userdata.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

final UserData udata = Get.put(UserData());

class _MyFormState extends State<MyForm> {
  TextEditingController name = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController contact = TextEditingController();
  String items = 'Male';
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const topbar(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your details",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 16, 136, 173)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                    color: const Color.fromARGB(255, 16, 136, 173), width: 2),
              ),
              height: 290,
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Focus(
                      onFocusChange: (hasFocus) {
                        setState(() {
                          isFocused = hasFocus;
                        });
                      },
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: name,
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                                color: isFocused ? Colors.black : Colors.grey),
                          ),
                          label: const Text(
                            "Name",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: max(1000, 100),
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButton<String>(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        borderRadius: BorderRadius.circular(20),
                        underline: Container(),
                        value: items,
                        onChanged: (String? newValue) {
                          setState(() {
                            items = newValue!;
                            gender.text = newValue;
                            print(gender.text);
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            value: 'Male',
                            child: Text("Male"),
                          ),
                          DropdownMenuItem(
                            value: 'Female',
                            child: Text("Female"),
                          ),
                          DropdownMenuItem(
                            value: 'Others',
                            child: Text("Others"),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      cursorColor: Colors.black,
                      controller: contact,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        label: Text(
                          "Phone",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //insertRecord();
                udata.userName = name.text;
                udata.userGender = gender.text;
                udata.userContact = contact.text;
                Get.to(() => const EarPage());
                print(udata.userName);
                print(udata.userContact);
                print(udata.userDbvalue);
                print(udata.userGender);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Start",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
