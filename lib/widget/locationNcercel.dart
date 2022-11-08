import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/customShape.dart';

class LocationNcercle extends StatelessWidget {
  const LocationNcercle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomPaint(
              painter: CurvePainter(),
              size: const Size(222, 100),
              child: Center(
                  child: Row(
                children: const [
                  // this a location icon
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  // this is a text widget
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ))),
        ),
        // a empty cercle shape with a border
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ],
    );
  }
}
