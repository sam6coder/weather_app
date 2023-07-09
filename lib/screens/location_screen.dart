import 'dart:math';
import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';


class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});

  final locationWeather;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temp = 0;
  String text = '';
  String city = '';
  String icon = '';

  String icon11 = '';
  String icon12 = '';
  String icon13 = '';
  String icon14 = '';
  String icon15 = '';
  String icon16 = '';
  String icon17 = '';
  String icon18 = '';
  String icon19 = '';
  String icon20 = '';
  String icon21 = '';
  String icon22 = '';
  String icon23 = '';
  String icon24 = '';
  String icon1 = '';
  String icon2 = '';
  String icon3 = '';
  String icon4 = '';
  String icon5 = '';
  String icon6 = '';
  String icon7 = '';
  String icon8 = '';
  String icon9 = '';
  String icon10 = '';
  String icontom = '';
  String iconaftertom = '';


  int temp11 = 0;
  int temp12 = 0;
  int temp13 = 0;
  int temp14 = 0;
  int temp15 = 0;
  int temp16 = 0;
  int temp17 = 0;
  int temp18 = 0;
  int temp19 = 0;
  int temp20 = 0;
  int temp21 = 0;
  int temp22 = 0;
  int temp23 = 0;
  int temp24 = 0;
  int temp1 = 0;
  int temp2 = 0;
  int temp3 = 0;
  int temp4 = 0;
  int temp5 = 0;
  int temp6 = 0;
  int temp7 = 0;
  int temp8 = 0;
  int temp9 = 0;
  int temp10 = 0;
  int dayt = 0;
  int max_c = 0;
  int min_c = 0;
  int max_ct = 0;
  int min_ct = 0;
  int max_cat = 0;
  int min_cat = 0;
  int wind=0;
  int humidity=0;
  int uv=0;
  int visible=0;
  int pressure=0;


  String text1 = '';
  String text2 = '';
  String text3 = '';
  String text4 = '';
  String text5 = '';
  String text6 = '';
  String text7 = '';
  String text8 = '';
  String text9 = '';
  String text10 = '';
  String text11 = '';
  String text12 = '';
  String text13 = '';
  String text14 = '';
  String text15 = '';
  String text16 = '';
  String text17 = '';
  String text18 = '';
  String text19 = '';
  String text20 = '';
  String text21 = '';
  String text22 = '';
  String text23 = '';
  String text24 = '';
  String tom = '';
  String aftertom = '';
  String tom_day = '';
  int i = 0;
  String dateName = '';

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
    print(icon);
  }

  void updateUI(dynamic weatherData) {
    double tempn = weatherData['current']['temp_c'];
    temp = tempn.toInt();
    text = weatherData['current']['condition']['text'];
    city = weatherData['location']['name'];
    icon = 'https:' + weatherData['current']['condition']['icon'];
    double maxt_c =
        weatherData['forecast']['forecastday'][0]['day']['maxtemp_c'];
    double mint_c =
        weatherData['forecast']['forecastday'][0]['day']['mintemp_c'];
    max_c = maxt_c.toInt();
    min_c = mint_c.toInt();
    double max_ctt =
        weatherData['forecast']['forecastday'][1]['day']['maxtemp_c'];
    max_ct = max_ctt.toInt();
    double min_ctt =
        weatherData['forecast']['forecastday'][1]['day']['mintemp_c'];
    min_ct = min_ctt.toInt();
    double max_catt =
        weatherData['forecast']['forecastday'][2]['day']['maxtemp_c'];
    max_cat = max_catt.toInt();
    double min_catt =
        weatherData['forecast']['forecastday'][2]['day']['mintemp_c'];
    min_cat = min_catt.toInt();
    tom = weatherData['forecast']['forecastday'][1]['day']['condition']['text'];
    aftertom =
        weatherData['forecast']['forecastday'][2]['day']['condition']['text'];
    icontom = 'https:' +
        weatherData['forecast']['forecastday'][1]['day']['condition']['icon'];
    iconaftertom = 'https:' +
        weatherData['forecast']['forecastday'][2]['day']['condition']['icon'];
    double windt=weatherData['current']['wind_kph'];
    wind=windt.toInt();
    humidity=weatherData['current']['humidity'];
    double uvt=weatherData['forecast']['forecastday'][0]['day']['uv'];
    uv=uvt.toInt();
    double vis=weatherData['forecast']['forecastday'][0]['day']['avgvis_km'];
    visible=vis.toInt();
    double air=weatherData['current']['pressure_mb'];
    pressure=air.toInt();
    DateTime date = DateTime.now();
    String day = DateFormat('EEEE').format(date);

    var map = [
      'Monday',
      'Tuesday',
      'wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    for (i = 0; i < map.length; i++) {
      if (map[i] == day) {
        dayt = i;
        break;
      }
    }

    dayt++;
    tom_day = map[dayt++];

    icon24 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][0]['condition']
            ['icon'];
    icon1 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][1]['condition']
            ['icon'];
    icon2 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][2]['condition']
            ['icon'];
    icon3 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][3]['condition']
            ['icon'];
    icon4 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][4]['condition']
            ['icon'];
    icon5 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][5]['condition']
            ['icon'];
    icon6 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][6]['condition']
            ['icon'];
    icon7 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][7]['condition']
            ['icon'];
    icon8 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][8]['condition']
            ['icon'];
    icon9 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][9]['condition']
            ['icon'];
    icon10 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][10]['condition']
            ['icon'];
    icon11 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][11]['condition']
            ['icon'];
    icon12 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][12]['condition']
            ['icon'];
    icon13 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][13]['condition']
            ['icon'];
    icon14 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][14]['condition']
            ['icon'];
    icon15 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][15]['condition']
            ['icon'];
    icon16 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][16]['condition']
            ['icon'];
    icon17 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][17]['condition']
            ['icon'];
    icon18 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][18]['condition']
            ['icon'];
    icon19 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][19]['condition']
            ['icon'];
    icon20 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][20]['condition']
            ['icon'];
    icon21 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][21]['condition']
            ['icon'];
    icon22 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][22]['condition']
            ['icon'];
    icon23 = 'https:' +
        weatherData['forecast']['forecastday'][0]['hour'][23]['condition']
            ['icon'];
    double tempt1 =
        weatherData['forecast']['forecastday'][0]['hour'][1]['temp_c'];
    temp1 = tempt1.toInt();
    double tempt2 =
        weatherData['forecast']['forecastday'][0]['hour'][2]['temp_c'];
    temp2 = tempt2.toInt();
    double tempt3 =
        weatherData['forecast']['forecastday'][0]['hour'][3]['temp_c'];
    temp3 = tempt3.toInt();
    double tempt4 =
        weatherData['forecast']['forecastday'][0]['hour'][4]['temp_c'];
    temp4 = tempt4.toInt();
    double tempt5 =
        weatherData['forecast']['forecastday'][0]['hour'][5]['temp_c'];
    temp5 = tempt5.toInt();
    double tempt6 =
        weatherData['forecast']['forecastday'][0]['hour'][6]['temp_c'];
    temp6 = tempt6.toInt();
    double tempt7 =
        weatherData['forecast']['forecastday'][0]['hour'][7]['temp_c'];
    temp7 = tempt7.toInt();
    double tempt8 =
        weatherData['forecast']['forecastday'][0]['hour'][8]['temp_c'];
    temp8 = tempt8.toInt();
    double tempt9 =
        weatherData['forecast']['forecastday'][0]['hour'][9]['temp_c'];
    temp9 = tempt9.toInt();
    double tempt10 =
        weatherData['forecast']['forecastday'][0]['hour'][10]['temp_c'];
    temp10 = tempt10.toInt();
    double tempt11 =
        weatherData['forecast']['forecastday'][0]['hour'][11]['temp_c'];
    temp11 = tempt11.toInt();
    double tempt12 =
        weatherData['forecast']['forecastday'][0]['hour'][12]['temp_c'];
    temp12 = tempt12.toInt();
    double tempt13 =
        weatherData['forecast']['forecastday'][0]['hour'][13]['temp_c'];
    temp13 = tempt13.toInt();
    double tempt14 =
        weatherData['forecast']['forecastday'][0]['hour'][14]['temp_c'];
    temp14 = tempt14.toInt();
    double tempt15 =
        weatherData['forecast']['forecastday'][0]['hour'][15]['temp_c'];
    temp15 = tempt15.toInt();
    double tempt16 =
        weatherData['forecast']['forecastday'][0]['hour'][16]['temp_c'];
    temp16 = tempt16.toInt();
    double tempt17 =
        weatherData['forecast']['forecastday'][0]['hour'][17]['temp_c'];
    temp17 = tempt17.toInt();
    double tempt18 =
        weatherData['forecast']['forecastday'][0]['hour'][18]['temp_c'];
    temp18 = tempt18.toInt();
    double tempt19 =
        weatherData['forecast']['forecastday'][0]['hour'][19]['temp_c'];
    temp19 = tempt19.toInt();
    double tempt20 =
        weatherData['forecast']['forecastday'][0]['hour'][20]['temp_c'];
    temp20 = tempt20.toInt();
    double tempt21 =
        weatherData['forecast']['forecastday'][0]['hour'][21]['temp_c'];
    temp21 = tempt21.toInt();
    double tempt22 =
        weatherData['forecast']['forecastday'][0]['hour'][22]['temp_c'];
    temp22 = tempt22.toInt();
    double tempt23 =
        weatherData['forecast']['forecastday'][0]['hour'][23]['temp_c'];
    temp23 = tempt23.toInt();
    double tempt24 =
        weatherData['forecast']['forecastday'][0]['hour'][0]['temp_c'];
    temp24 = tempt24.toInt();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 110.0),
                child: Row(children: <Widget>[
                  Text(
                    '$city',
                    style: kMessageTextStyle,
                  ),
                ]),
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(

                  children: [
                    Row(children: <Widget>[
                      Text(
                        '$temp',
                        style: kConditionTextStyle,
                      ),
                    ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:35.0,
                        ),
                        Text(
                          '°',
                          style: kTempTextStyle,
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          child: Text(
                            '$text',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: activeCardColor,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text('Now', style: kTmpTextStyle),
                                Image.network(icon),
                                Row(
                                  children: [
                                    Text(
                                      '$temp',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '13:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon13),
                                Row(
                                  children: [
                                    Text(
                                      '$temp13',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '14:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon14),
                                Row(
                                  children: [
                                    Text(
                                      '$temp14',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '15:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon15),
                                Row(
                                  children: [
                                    Text(
                                      '$temp15',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 20.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '16:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon16),
                                Row(
                                  children: [
                                    Text(
                                      '$temp16',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '17:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon17),
                                Row(
                                  children: [
                                    Text(
                                      '$temp17',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '18:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon18),
                                Row(
                                  children: [
                                    Text(
                                      '$temp18',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '19:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon19),
                                Row(
                                  children: [
                                    Text(
                                      '$temp19',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '20:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon20),
                                Row(
                                  children: [
                                    Text(
                                      '$temp20',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '21:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon21),
                                Row(
                                  children: [
                                    Text(
                                      '$temp21',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '22:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon22),
                                Row(
                                  children: [
                                    Text(
                                      '$temp22',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '23:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon11),
                                Row(
                                  children: [
                                    Text(
                                      '$temp11',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '00:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon24),
                                Row(
                                  children: [
                                    Text(
                                      '$temp24',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '01:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon1),
                                Row(
                                  children: [
                                    Text(
                                      '$temp1',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '02:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon2),
                                Row(
                                  children: [
                                    Text(
                                      '$temp2',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '03:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon3),
                                Row(
                                  children: [
                                    Text(
                                      '$temp3',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '04:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon4),
                                Row(
                                  children: [
                                    Text(
                                      '$temp4',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '05:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon5),
                                Row(
                                  children: [
                                    Text(
                                      '$temp5',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '06:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon6),
                                Row(
                                  children: [
                                    Text(
                                      '$temp6',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '07:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon7),
                                Row(
                                  children: [
                                    Text(
                                      '$temp7',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '08:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon8),
                                Row(
                                  children: [
                                    Text(
                                      '$temp8',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '09:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon9),
                                Row(
                                  children: [
                                    Text(
                                      '$temp9',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '10:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon10),
                                Row(
                                  children: [
                                    Text(
                                      '$temp10',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '11:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon11),
                                Row(
                                  children: [
                                    Text(
                                      '$temp11',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 20.0),
                          child: Container(
                            height: 150.0,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  '12:00',
                                  style: kTmpTextStyle,
                                ),
                                Image.network(icon12),
                                Row(
                                  children: [
                                    Text(
                                      '$temp12',
                                      style: kTmpTextStyle,
                                    ),
                                    Text('°'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: activeCardColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Today', style: kforecastTextStyle),
                          SizedBox(
                            width: 10,
                          ),
                          Image.network(icon),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('$text', style: kforecastTextStyle),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$max_c°/$min_c°',
                            style: kforecastTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Tomorrow', style: kforecastTextStyle),
                          SizedBox(
                            width: 10,
                          ),
                          Image.network(icontom),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('$tom', style: kforecastTextStyle),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$max_ct°/$min_ct°',
                            style: kforecastTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$tom_day', style: kforecastTextStyle),
                          SizedBox(
                            width: 10,
                          ),
                          Image.network(iconaftertom),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('$aftertom', style: kforecastTextStyle),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$max_cat°/$min_cat°',
                            style: kforecastTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.thermometer,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('Feels like', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$temp°', style: kwindtextStyle),
                                ]),
                              )),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.wind,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('E wind', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$wind Km/h',style:kwindtextStyle),
                                ]),
                              )),
                        ),],),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.drop,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('Humdidity', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$humidity %', style: kwindtextStyle),
                                ]),
                              )),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.sun_max,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('UV', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$uv Strong',style:kwindtextStyle),
                                ]),
                              )),
                        ),],),
                    SizedBox(
                      height:15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.eye,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('Visibility', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$visible km', style: kwindtextStyle),
                                ]),
                              )),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: activeCardColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:30.0),
                                child: Column(children: [
                                  Icon(
                                    CupertinoIcons.wind_snow,
                                    color: Colors.white,
                                    size: 35.0,
                                    semanticLabel: 'Text to announce in accessibility modes',
                                  ),
                                  SizedBox(
                                    height:20.0,
                                  ),
                                  Text('Air Pressure', style: kiconStyle),
                                  SizedBox(
                                    height:10.0,
                                  ),
                                  Text('$pressure hPa',style:kwindtextStyle),
                                ]),
                              )),
                        ),],),
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
