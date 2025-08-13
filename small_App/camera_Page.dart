
import 'package:depi/small_App/photoGallary.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt,size:120,),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>PhotoGallery()));
          },
              child: Text("Open Your Gallery"))        ],
      ),
    );
  }
}
