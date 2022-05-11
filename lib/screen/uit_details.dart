import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stretchy_header/stretchy_header.dart';

class UitDetails extends StatelessWidget {
  const UitDetails({Key? key}) : super(key: key);

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
          'UIT RGPV, Shivpuri',
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
            "assets/images/1349eca6-802f-4f8a-8487-899c67a7cb67.jpeg",
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
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
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
                    'University Institute of Technology RGPV, Shivpuri',
                    style: GoogleFonts.lato(
                      //textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
                  child: Text(
                    'As per the directives of Government of Madhya Pradesh, University Institute of Technology, Shivpuri, a constituent institute of Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal is established in 2020. The institution presently offers undergraduate programmes in \n• Civil Engineering, \n• Computer Science Engineering, \n• Electrical and Electronics Engineering and \n• Mechanical Engineering \nwith an intake of 60 students each.',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
