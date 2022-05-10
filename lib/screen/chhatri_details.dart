import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stretchy_header/stretchy_header.dart';

class ChhatriDetails extends StatelessWidget {
  const ChhatriDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), //change your color here
        ),
        centerTitle: false,
        title: const Text(
          'Chhatri: The Heritage',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: StretchyHeader.singleChild(
        headerData: HeaderData(
          headerHeight: 500,
          backgroundColor: Colors.black54,
          blurColor: Colors.transparent,
          header: Image.asset(
            "assets/images/Tourism1.jpeg",
            fit: BoxFit.cover,
          ),
          // overlay: Align(
          //   alignment: Alignment.bottomRight,
          //   child: Material(
          //     color: Colors.transparent,
          //     child: InkResponse(
          //       onTap: () {
          //         ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(
          //             content: Text('onTap'),
          //           ),
          //         );
          //       },
          //       child: const Padding(
          //         padding: EdgeInsets.all(12),
          //         child: Icon(
          //           Icons.fullscreen,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 10, 17, 54),
                      Color.fromARGB(255, 3, 3, 3),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Shivpuri is famous for graceful, intricately embellished marble chhatris erected by Scindia rulers. The Chhatris are set in an elaborate Mughal Garden and are dedicated to Scindias. One of these belongs to Madhav Rao Scindia, and the other to his mother Maharani Sakhya Raje Scindia facing each other. The Chhatris are spectacular fusion of Hindu and Islamic architecture styles with  Mughal pavilions.',
                    style: GoogleFonts.lato(
                      //textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 10, 17, 54),
                      Color.fromARGB(255, 3, 3, 3),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'How To Reach',
                    style: GoogleFonts.lato(
                      //textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 10, 17, 54),
                      Color.fromARGB(255, 3, 3, 3),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'By Air',
                        style: GoogleFonts.lato(
                          //textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          // fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'Gwalior Airport (Rajmata Vijaya Raje Scindia Air Terminal) is the nearest airdrome which takes 2 hours  48 minutes drive (125.6 Km) to reach the destination.',
                        style: GoogleFonts.lato(
                          //textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const Text(''),
                      Text(
                        'By Train',
                        style: GoogleFonts.lato(
                          // textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'Shivpuri has its own railhead which is well connected to other cities like Delhi (400 Km), Bhopal (300 Km), Indore (400 Km).',
                        style: GoogleFonts.lato(
                          //textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const Text(''),
                      Text(
                        'By Road',
                        style: GoogleFonts.lato(
                          // textStyle:
                          //     Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          // fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'Gwalior Airport (Rajmata Vijaya Raje Scindia Air Terminal) is the nearest airdrome which takes 2 hours  48 minutes drive (125.6 Km) to reach the destination.',
                        style: GoogleFonts.lato(
                          // textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
