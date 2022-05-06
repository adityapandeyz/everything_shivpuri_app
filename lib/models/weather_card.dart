import 'package:flutter/material.dart';
import 'package:open_weather_widget/open_weather_widget.dart';

// ignore: must_be_immutable
class WeatherCard extends StatelessWidget {
  String apiKey = "17a7d256dc83a5a925da30d70837769a";

  WeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double marginLeft = 10.0;
    double marginTop = 8.0;
    return Card(
        elevation: 7,
        margin:
            EdgeInsets.symmetric(horizontal: marginLeft, vertical: marginTop),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Stack(
            children: [
              Container(
                height: 195,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/watercolor-autumn-landscape.jpg'),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
              // BlurryContainer(
              //   blur: 1,
              //   borderRadius: BorderRadius.circular(12),
              //   bgColor: Color.fromARGB(40, 253, 155, 155),
              //   height: 190,
              //   width: double.infinity,
              //   child: Text(''),
              // ),
              OpenWeatherWidget(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(195, 230, 230, 230),
                locationColor: const Color.fromARGB(255, 0, 0, 0),
                temperatureColor: const Color.fromARGB(255, 0, 0, 0),

                activeColor: const Color.fromARGB(255, 255, 255, 255),
                weatherTextColor: const Color.fromARGB(255, 0, 0, 0),
                latitude: 25.4320,
                longitude: 77.6644,
                location: "Shivpuri",
                height: 185,
                apiKey: apiKey,
                alignment: MainAxisAlignment.center,
                margin: const EdgeInsets.all(5),
                // minTemperatureTextStyle:const TextStyle(fontWeight: FontWeight.w300)
              ),
            ],
          ),
        ));
  }
}
