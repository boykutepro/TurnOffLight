import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Turn off the light'),
        ),
        body: Center(
          child: Container(
            child: turnOffTheLight(),
          ),
        ),
      ),
    );
  }
}

class turnOffTheLight extends StatefulWidget {
  turnOffTheLight({Key key}) : super(key: key);

  @override
  _turnOffTheLightState createState() => _turnOffTheLightState();
}

class _turnOffTheLightState extends State<turnOffTheLight> {

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset( isOn ? "assets/BulbOn.jpg" : "assets/BulbOff.jpg", height: 400,),
          InkWell(
            onTap: () {
              setState(() {
              isOn = !isOn;
              });
            },
          child: Image.asset("assets/" + (isOn ? "on" : "off") + ".png", height: 100, width: 100,
          fit: BoxFit.fill,)
          ),
        ]
      ),
    );
  }
}