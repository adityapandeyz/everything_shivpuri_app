import 'package:everything_shivpuri_app/models/helpline_card.dart';
import 'package:flutter/material.dart';

class HelplineRoute extends StatelessWidget {
  final String title;
  final String cardImage;

  final String name1;
  final String number1;
  final String name2;
  final String number2;
  final String name3;
  final String number3;
  final String name4;
  final String number4;
  final String name5;
  final String number5;
  final String name6;
  final String number6;

  final String name7;
  final String number7;
  final String name8;
  final String number8;
  final String name9;
  final String number9;

  const HelplineRoute({
    Key? key,
    required this.title,
    required this.cardImage,
    required this.name1,
    required this.number1,
    required this.name2,
    required this.number2,
    required this.name3,
    required this.number3,
    required this.name4,
    required this.number4,
    required this.name5,
    required this.number5,
    required this.name6,
    required this.number6,
    required this.name7,
    required this.number7,
    required this.name8,
    required this.number8,
    required this.name9,
    required this.number9,
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
              HelplineCard(
                boxTitle: name1,
                boxNumber: number1,
              ),
              HelplineCard(
                boxTitle: name2,
                boxNumber: number2,
              ),
              HelplineCard(
                boxTitle: name3,
                boxNumber: number3,
              ),
              HelplineCard(
                boxTitle: name4,
                boxNumber: number4,
              ),
              HelplineCard(
                boxTitle: name5,
                boxNumber: number5,
              ),
              HelplineCard(
                boxTitle: name6,
                boxNumber: number6,
              ),
              HelplineCard(
                boxTitle: name7,
                boxNumber: number7,
              ),
              HelplineCard(
                boxTitle: name8,
                boxNumber: number8,
              ),
              HelplineCard(
                boxTitle: name9,
                boxNumber: number9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
