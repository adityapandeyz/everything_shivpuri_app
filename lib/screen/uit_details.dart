import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('http://www.uitshivpuri.rgpv.ac.in');

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
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/LRM_20220306_174256-01.jpeg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: BlurryContainer(
                          padding: const EdgeInsets.all(8),
                          borderRadius: BorderRadius.circular(20),
                          bgColor: Colors.white,
                          height: 250,
                          width: 350,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            //make border radius more than 50% of square height & width
                            child: Image.asset(
                              "assets/images/colllege_hostel_view.jpeg",
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.cover, //change image fill type
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        bgColor: const Color.fromARGB(255, 255, 250, 250),
                        height: 88,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'University Institute of Technology RGPV, Shivpuri',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        bgColor: const Color.fromARGB(255, 255, 250, 250),
                        height: 350,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'As per the directives of Government of Madhya Pradesh, University Institute of Technology, Shivpuri, a constituent institute of Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal is established in 2020. The institution presently offers undergraduate programmes in \n• Civil Engineering, \n• Computer Science Engineering, \n• Electrical and Electronics Engineering and \n• Mechanical Engineering \nwith an intake of 60 students each.',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: InkWell(
                    //     child: BlurryContainer(
                    //       borderRadius: BorderRadius.circular(20),
                    //       bgColor: const Color.fromARGB(255, 255, 250, 250),
                    //       height: 65,
                    //       width: 350,
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(6.0),
                    //         child: Text(
                    //           'Visit Website',
                    //           style: GoogleFonts.lato(
                    //             textStyle:
                    //                 Theme.of(context).textTheme.headline4,
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w700,
                    //             fontStyle: FontStyle.italic,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     onTap: _launchUrl,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}
