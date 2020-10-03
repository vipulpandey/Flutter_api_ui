import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

import 'custom_widgets.dart';

class AIServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Reports"),
      ),
      body: Column(
        children: [
          DropDownClass("Choose Options ( Indices )"),
          SizedBox(height: 20,),
          Text("Last 12 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          new Container(
            padding: const EdgeInsets.all(30),
            color: Colors.white,
            child: new Sparkline(
              data: data,
              lineWidth: 5.0,
              lineColor: Colors.purple,
              pointsMode: PointsMode.all,
              pointSize: 8.0,
              pointColor: Colors.amber,
            ),            
          ),
          SizedBox(height: 20,),
          Text("I am Jarvis. How may I help you ?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          FloatingActionButton(child: Icon(Icons.person), onPressed: (){})
        ],
      ),
    );
  }
}
