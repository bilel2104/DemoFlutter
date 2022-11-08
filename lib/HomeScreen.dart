import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/homeScreenController.dart';

import 'package:flutter_application_1/widget/addressWidget.dart';
import 'package:flutter_application_1/widget/categoryWidget.dart';

import 'package:flutter_application_1/widget/locationNcercel.dart';
import 'package:get/get.dart';

//this is a home screen with bottom navigation bar with 4 tabs and a floating action button
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  //size of the screen to make the widget responsive
  final double height = Get.height;
  final double width = Get.width;
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const LocationNcercle(),
            // this is research bar with a search icon  and grey backgroun with rounded border
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color.fromARGB(255, 244, 246, 249),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 0,
                child: Address(
                  height: height / 9,
                  width: width / 1.5,
                )),
            Expanded(flex: 0, child: CategoryWidget()),
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Obx((() => GestureDetector(
                        onTap: () {
                          productController.changeFav();
                        },
                        child: GestureDetector(
                          onDoubleTap: () {
                            print(' added to card ');
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            color: Colors.amber,
                            height: 50,
                            width: 200,
                            child: Icon(
                              Icons.favorite,
                              color: productController.isFav.value
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      )));
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 2.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.red,
          onTap: (index) {
            if (index == 0) {
              Get.toNamed('/home');
            } else if (index == 1) {
              Get.toNamed('/search');
            } else if (index == 2) {
              Get.toNamed('/favorite');
            } else if (index == 3) {
              Get.toNamed('/profile');
            }
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Container(
          height: 65,
          width: 65,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {},
            label: Column(
              children: const [
                Text(
                  "price  ",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                Icon(Icons.add),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
