import 'package:weather_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/services/networking.dart';
import 'package:weather_app/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
const apiKey='bd90f2c679684b2e88d194145230406';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude=0.0;
  double longitude=0.0;

  @override
  void initState(){
    super.initState();

    geoLocationData();

  }
  void geoLocationData() async{
  Location location=Location();
  await location.getCurrentLocation();
  latitude=location.latitude;
  longitude=location.longitude;


    NetworkHelper networkHelper=NetworkHelper('http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$latitude,$longitude&days=10&aqi=yes&alerts=no');


      var weatherData= await networkHelper.getData();
      
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen(locationWeather: weatherData,);
      }));

  }
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(
        child:SpinKitDoubleBounce(
          color:Colors.white,
          size:100.0,
        ),
      ),
    );
  }
}
