import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'aiservices.dart';
import 'custom_widgets.dart';


class AgriVision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agrivision for AI"),),   
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Plant Doctor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/images/plant.jpg'), height: 200,width: 200,),
          SizedBox(height: 20,),
          Text("Soil Doctor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/images/soil.jpg'), height: 200,width: 200,),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton('Next', () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AIServices();
                      }));
                    }),
            ),
        ],
      ),   
    );
  }
}

class PlantApp extends StatefulWidget {
  @override
  _PlantAppState createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Placeholder(fallbackHeight: 40,),
    );
  }
}

