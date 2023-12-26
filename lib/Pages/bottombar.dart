import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 17, 17, 17),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Project Karna",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image(
                        image: AssetImage('assets/atria-logo.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image(
                        image: AssetImage('assets/lions-logo.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image(
                        image: AssetImage('assets/srcish-logo.jpeg'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Project Karna is a product by : Dr.S.R.Chandrasekhar Institute of Speech and Hearing @ATRIA_PROJECT_KARNA",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
