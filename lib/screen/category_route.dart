import 'package:flutter/material.dart';

import '../models/list_square.dart';

class Category extends StatelessWidget {
  final String title;
  final String cardImage;

  final String name1;
  final String image1;
  final String address1;
  final String url1;

  final String name2;
  final String image2;
  final String address2;
  final String url2;

  final String name3;
  final String image3;
  final String address3;
  final String url3;

  final String name4;
  final String image4;
  final String address4;
  final String url4;

  final String name5;
  final String image5;
  final String address5;
  final String url5;

  final String name6;
  final String image6;
  final String address6;
  final String url6;

  const Category({
    Key? key,
    required this.title,
    required this.cardImage,
    required this.name1,
    required this.image1,
    required this.address1,
    required this.url1,
    required this.name2,
    required this.image2,
    required this.address2,
    required this.url2,
    required this.name3,
    required this.image3,
    required this.address3,
    required this.url3,
    required this.name4,
    required this.image4,
    required this.address4,
    required this.url4,
    required this.name5,
    required this.image5,
    required this.address5,
    required this.url5,
    required this.name6,
    required this.image6,
    required this.address6,
    required this.url6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 38, 38),
        appBar: AppBar(
          iconTheme: const IconThemeData(
              color: Color.fromARGB(255, 255, 255, 255) //change your color here
              ),
          centerTitle: false,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: SizedBox(
            child: ListView(
              children: <Widget>[
                ListSqure(
                  boxTitle: name1,
                  boxImage: image1,
                  boxSubtitle: address1,
                  boxUrl: Uri.parse(url1),
                ),
                ListSqure(
                  boxTitle: name2,
                  boxImage: image2,
                  boxSubtitle: address2,
                  boxUrl: Uri.parse(url2),
                ),
                ListSqure(
                  boxTitle: name3,
                  boxImage: image3,
                  boxSubtitle: address3,
                  boxUrl: Uri.parse(url3),
                ),
                ListSqure(
                  boxTitle: name4,
                  boxImage: image4,
                  boxSubtitle: address4,
                  boxUrl: Uri.parse(url4),
                ),
                ListSqure(
                  boxTitle: name5,
                  boxImage: image5,
                  boxSubtitle: address5,
                  boxUrl: Uri.parse(url5),
                ),
                ListSqure(
                  boxTitle: name6,
                  boxImage: image6,
                  boxSubtitle: address6,
                  boxUrl: Uri.parse(url6),
                ),
              ],
            ),
          ),
        ));
  }
}
