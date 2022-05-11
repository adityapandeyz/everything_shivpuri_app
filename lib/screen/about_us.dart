import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(30, 0, 0, 0),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' About Us',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const Text(
                ' Developers:',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 57, 14, 177),
                      Color.fromARGB(255, 214, 9, 9),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/app_logo/dot.-150x150.png'),
                ),
              ),
              const Text(
                'Version: 3.2.0+6',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                //textAlign: TextAlign.,
              ),
              const Text(
                '© 2022 dotResolution Studio',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
