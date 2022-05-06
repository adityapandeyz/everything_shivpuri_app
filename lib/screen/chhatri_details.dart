import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

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
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              //Background Image
              image: AssetImage('assets/images/IMG_20211223_154618-01.jpeg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                              "assets/images/Tourism1.jpeg",
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.cover, //change image fill type
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        bgColor: const Color.fromARGB(255, 255, 250, 250),
                        height: 310,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Shivpuri is famous for graceful, intricately embellished marble chhatris erected by Scindia rulers. The Chhatris are set in an elaborate Mughal Garden and are dedicated to Scindias. One of these belongs to Madhav Rao Scindia, and the other to his mother Maharani Sakhya Raje Scindia facing each other. The Chhatris are spectacular fusion of Hindu and Islamic architecture styles with  Mughal pavilions.',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        bgColor: const Color.fromARGB(255, 255, 250, 250),
                        height: 65,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'How To Reach',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        bgColor: Colors.white,
                        height: 250,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Text(
                                'By Air',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'Gwalior Airport (Rajmata Vijaya Raje Scindia Air Terminal) is the nearest airdrome which takes 2 hours  48 minutes drive (125.6 Km) to reach the destination.',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'By Train',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'Shivpuri has its own railhead which is well connected to other cities like Delhi (400 Km), Bhopal (300 Km), Indore (400 Km).',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'By Road',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'Gwalior Airport (Rajmata Vijaya Raje Scindia Air Terminal) is the nearest airdrome which takes 2 hours  48 minutes drive (125.6 Km) to reach the destination.',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 12,
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
            ),
          ),
        ));
  }
}
