import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:forecast/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';
  void setWorldTime() async {
    WorldTime instance = WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'time': instance.time,
      'location': instance.location,
      'flag': instance.flag,
      'isDaytime': instance.isDayTime,
    });
    
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          child: SpinKitWave(
            color: Colors.white,
            size: 100.0,
          ),
        ),
      );
  }
}
