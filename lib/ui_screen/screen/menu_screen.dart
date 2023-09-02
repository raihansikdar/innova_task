

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/screen/login_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';
import 'package:innova_task/ui_screen/widgets/drawer_element.dart';

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  ZoomDrawer.of(context)?.close();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white38,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                        "assets/images/person.jpg",
                      ),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {
                        const Icon(Icons.image);
                      },
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // const Text(
              //   "Hey 👋",
              //   style: TextStyle(
              //     fontSize: textFontSize,
              //     fontWeight: mediumFontWeight,
              //     color: heyColor,
              //   ),
              // ),
              // const SizedBox(
              //   height: 8.0,
              // ),
              const Text(
                "Alisson Becker",
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: mediumFontWeight,
                  color: kWhiteColor,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Divider(
                height: 8.0,
                thickness: 2.0,
                color: Colors.white38,
              ),
              const SizedBox(
                height: 5.0,
              ),
              DrawerElememt(
                text: 'Person',
                image: "assets/icons/person.png",
                onTap: () {},
              ),
              DrawerElememt(
                text: 'Home Page',
                image: "assets/icons/home.png",
                onTap: () {
                  ZoomDrawer.of(context)?.close();
                },
              ),
              DrawerElememt(
                text: 'My Cart',
                image: "assets/icons/bag.png",
                onTap: () {
                  ZoomDrawer.of(context)?.open();
                },
              ),
              DrawerElememt(
                text: 'Favorite',
                image: "assets/icons/favorite.png",
                onTap: () {},
              ),
              DrawerElememt(
                text: 'Orders',
                image: "assets/icons/orders.png",
                onTap: () {},
              ),
              DrawerElememt(
                text: 'Notifications',
                image: "assets/icons/notification.png",
                onTap: () {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Divider(
                height: 8.0,
                thickness: 2.0,
                color: Colors.white38,
              ),
              const SizedBox(
                height: 20.0,
              ),
              DrawerElememt(
                text: 'Sign Out',
                image: "assets/icons/sign_out.png",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
