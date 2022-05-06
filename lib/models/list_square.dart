import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://goo.gl/maps/UWF7FkqxKPECAh328');

class ListSqure extends StatefulWidget {
  final String boxImage;
  final String boxTitle;
  final String boxSubtitle;
  final Uri boxUrl;

  const ListSqure({
    Key? key,
    required this.boxImage,
    required this.boxTitle,
    required this.boxSubtitle,
    required this.boxUrl,
  }) : super(key: key);

  @override
  State<ListSqure> createState() => _ListSqureState();
}

class _ListSqureState extends State<ListSqure> {
  Future<void>? _launched;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        _launched = _launchInBrowser(widget.boxUrl);
      }),
      child: Card(
        elevation: 0,
        color: const Color.fromARGB(0, 0, 0, 0),
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
                height: 85,
                //width: MediaQuery.of(context).size.width * 4.0,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 3, bottom: 0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SizedBox(
                              height: 65,
                              width: 65,
                              child: Image(
                                image: NetworkImage(widget.boxImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.boxTitle,
                            style: GoogleFonts.roboto(
                              color: const Color.fromARGB(255, 255, 252, 252),
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            widget.boxSubtitle,
                            style: GoogleFonts.roboto(
                              color: const Color.fromARGB(255, 255, 255, 255),

                              //textStyle:Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                              //fontWeight: FontWeight.w500,
                              //fontStyle: FontStyle.italic,
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

  void _launchUrl() async {
    if (!await launchUrl(widget.boxUrl)) throw 'Could not launch $_url';
  }
}
