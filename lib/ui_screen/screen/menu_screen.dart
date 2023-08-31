import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/screen/home_page.dart';
import 'package:innova_task/ui_screen/screen/login_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';
import 'package:innova_task/ui_screen/widgets/drawer_element.dart';

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 50,left: 16.0,right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                const SizedBox(height: 32.0,),
                Text("Hey 👋",
                  style: TextStyle(
                    fontSize: textFontSize,
                    fontWeight: mediumFontWeight,
                    color: heyColor,
                  ),
                ),
                const SizedBox(height: 8.0,),
                Text("Alisson Becker",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: mediumFontWeight,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(height: 20.0,),
                DrawerElememt(text: 'Person',image: "assets/icons/person.png", onTap: () {},),
                DrawerElememt(
                  text: 'Home Page',
                  image: "assets/icons/home.png",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                  },
                ),
                DrawerElememt(text: 'My Cart',image: "assets/icons/bag.png", onTap: () {  },),
                DrawerElememt(text: 'Favorite',image: "assets/icons/favorite.png", onTap: () {  },),
                DrawerElememt(text: 'Orders',image: "assets/icons/orders.png", onTap: () {  },),
                DrawerElememt(text: 'Notifications',image: "assets/icons/notification.png", onTap: () {  },),
                const SizedBox(height: 20.0,),
                const Divider(
                  height: 8.0,
                  thickness: 2.0,
                  color: Colors.white38,
                ),
                const SizedBox(height: 20.0,),
                DrawerElememt(text: 'Sign Out',image: "assets/icons/sign_out.png", onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                          (route) => false);
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
