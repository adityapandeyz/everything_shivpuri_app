import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
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
            height: 160,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 30, right: 16),
              child: Column(
                children: [
                  Text(
                    'Contact Us',
                    style: GoogleFonts.workSans(
                      color: const Color.fromARGB(255, 255, 252, 252),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            // BoxShadow(
                            //   color: Colors.white,
                            //   offset: Offset(0.0, 0.0),
                            //   blurRadius: 0.0,
                            //   spreadRadius: 0.0,
                            // ), //BoxShadow
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'admin@dresolution.tech',
                            style: GoogleFonts.workSans(
                              color: const Color.fromARGB(255, 255, 255, 255),

                              //textStyle:Theme.of(context).textTheme.headline4,
                              fontSize: 15,
                              //fontWeight: FontWeight.w500,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      onTap: _launchURL,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    final url = Uri.encodeFull('mailto:admin@dresolution.tech');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
