import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task2/Utilities/SortFunction.dart';

import '../styles/HeadDecoration.dart';
import '../styles/TextStyle.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> fromThis = ['A', 'A', 'A', 'A', 'Z', 'Z'];
    List<String> toThis = ['B', 'C', 'D', 'E', 'X', 'Y'];
    List<int> distance = [12, 18, 8, 24, 5, 15];
    sortFromtoTo(from: fromThis, to: toThis, dis: distance);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'My App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeadDecoration(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getText(label: 'From'),
                  getText(label: 'To'),
                  getText(label: 'distance'),
                ],
              ),
            ),
            for (int i = 0; i < distance.length; i++)
              Row(
                children: [
                  getText(
                      label: fromThis[i],
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  getText(
                      label: toThis[i],
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  getText(
                      label: '${distance[i]}',
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ],
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(
                        30.3753,
                        69.3451,
                      ),
                      zoom: 15),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
