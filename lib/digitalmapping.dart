import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'agrivision.dart';
import 'custom_widgets.dart';

class DigitalMapping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("Live field survey models"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: Cube(
              onSceneCreated: (Scene scene) {
                scene.world.add(Object(
                    backfaceCulling: true,
                    fileName: 'assets/plants/mountain/mount.blend1.obj',
                    scale: Vector3(20, 20, 20)));
              },
            ),
          ),
          
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton('Next', () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AgriVision();
                      }));
                    }),
            ),
          )
        ],
      ),
    );
  }
}
