import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/widget/customShape.dart';

class CategoryWidget extends StatelessWidget {
  final double? height;
  final double? width;
//size mediaquery

  CategoryWidget({Key? key, this.height, this.width}) : super(key: key);

  List<CategoryModel> categories = [
    CategoryModel(name: 'food', backgroundComor: Colors.amberAccent),
    CategoryModel(name: 'fish', backgroundComor: Colors.cyanAccent),
    CategoryModel(name: 'burger', backgroundComor: Colors.tealAccent),
    CategoryModel(name: 'pizza', backgroundComor: Colors.amberAccent),
    CategoryModel(name: 'chicken', backgroundComor: Colors.indigoAccent),
    CategoryModel(name: 'beef', backgroundComor: Colors.purpleAccent),
    CategoryModel(name: 'cake', backgroundComor: Colors.lightBlueAccent),
    CategoryModel(name: 'ice cream', backgroundComor: Colors.deepOrangeAccent),
    CategoryModel(name: 'drinks', backgroundComor: Colors.amber),
    CategoryModel(name: 'sushi', backgroundComor: Colors.yellowAccent),
    CategoryModel(name: 'salad', backgroundComor: Colors.deepOrangeAccent),
    CategoryModel(name: 'sandwich', backgroundComor: Colors.lightBlueAccent),
    CategoryModel(name: 'hot dog', backgroundComor: Colors.orangeAccent),
    CategoryModel(name: 'fries', backgroundComor: Colors.limeAccent),
    CategoryModel(name: 'noodles', backgroundComor: Colors.purpleAccent),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          width: width * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.05,
            ),
            const Text('Explore by category'),
            SizedBox(
              width: width / 2.5,
            ),
            Text("see all (${categories.length})"),
          ],
        ),
        SizedBox(
          height: height * 0.2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18.0),
                      width: width * 0.18,
                      height: height * 0.1,
                      decoration: BoxDecoration(
                        color: categories[index].backgroundComor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    Text(categories[index].name!),
                  ],
                );
              }),
        ),
      ],
    );
  }
}

class CategoryModel {
  String? name;

  Color? backgroundComor;

  CategoryModel({this.name, this.backgroundComor});
}
