import 'package:flutter/material.dart';

void main() => runApp(Weatherapp());

class Weatherapp extends StatefulWidget {
  @override
  _WeatherappState createState() => _WeatherappState();
}

class _WeatherappState extends State<Weatherapp> {
  int temperature = 0;
  String location = 'San Fransisco';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/clear.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      temperature.toString() + '°C',
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      location,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Search another location..',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
