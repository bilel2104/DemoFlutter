import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/customShape.dart';

class Address extends StatelessWidget {
  final double? height;
  final double? width;
  Address({Key? key, this.height, this.width}) : super(key: key);

  //this a list of addressModel
  final List<AddressModel> addressList = [
    AddressModel(
      locationName: 'Home',
      buildingName: '123, Main , New York',
      streetName: '123, Main Street, New ',
      icon: const Icon(
        Icons.home,
      ),
    ),
    AddressModel(
      locationName: 'work',
      buildingName: '123, Main , New York',
      streetName: '123, Main Street,  York',
      icon: const Icon(
        Icons.work,
      ),
    ),
    AddressModel(
      locationName: 'Other',
      buildingName: '123, Main , New York',
      streetName: '123, Main Street, New York',
      icon: const Icon(
        Icons.location_on,
      ),
    ),
  ];

  //size of the screen to make the widget responsive
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: addressList.length,
          itemBuilder: (context, index) {
            return
                // container for each address with responsive text size and padding
                Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(10),
              height: 90,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: addressList[index].icon,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        // color: Colors.amber,
                        margin: const EdgeInsets.only(
                          right: 100,
                          top: 10,
                        ),
                        child: AutoSizeText(
                          addressList[index].locationName!,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.amber,
                        margin: const EdgeInsets.only(
                          right: 40,
                          top: 2,
                        ),
                        child: AutoSizeText(
                          addressList[index].buildingName!,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class AddressModel {
  String? locationName;
  String? buildingName;
  String? streetName;
  Icon? icon;

  AddressModel(
      {this.locationName, this.buildingName, this.streetName, this.icon});
}
