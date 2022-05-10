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
            children: const [
              Text(
                ' About Us',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                ' Developers:',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Center(
                child: Text(
                  'Aditya Pandey, Anirudh Singh Bhadauria, Ishank Rajiv Pathak, Abhyuday Sharma, Shiven Kumar Mishra, Shivam Shahi, Aditya Tripathi, Shivansh Pandey',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Version: 3.0.0+5',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                //textAlign: TextAlign.,
              ),
              Text(
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
