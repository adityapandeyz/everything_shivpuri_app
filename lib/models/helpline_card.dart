import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HelplineCard extends StatelessWidget {
  final String boxTitle;
  final String boxNumber;

  const HelplineCard({
    Key? key,
    required this.boxTitle,
    required this.boxNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final phoneNumber = boxNumber;
        final url = 'tel:$phoneNumber';

        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Card(
        //elevation: 8,
        color: const Color.fromARGB(0, 255, 255, 255),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(237, 20, 20, 20),
                      offset: Offset(
                        1.0,
                        2.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    )
                  ],
                ),
                height: 80,
                //width: 369,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                              padding: EdgeInsets.only(left: 20),
                              height: 65,
                              width: 65,
                              child: Icon(
                                Icons.call,
                                size: 40,
                                color: Colors.grey,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            boxTitle,
                            style: GoogleFonts.roboto(
                              color: const Color.fromARGB(255, 255, 252, 252),
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            boxNumber,
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                              //textStyle:Theme.of(context).textTheme.headline4,
                              fontSize: 15,
                              //fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
