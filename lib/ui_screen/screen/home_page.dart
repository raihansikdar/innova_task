import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/screen/main_screen.dart';
import 'package:innova_task/ui_screen/screen/menu_screen.dart';

class HomePage extends GetView<MyDrawerController> {
   const HomePage({super.key});
  //final zoomController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        controller: controller.zoomDrawerController,
        menuScreen: const MenuScreen(),
        mainScreen:  MainScreen(),
        moveMenuScreen: true,
        borderRadius: 24.0,
        showShadow: true,
        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.yellow,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        
      ),
      
    );
  }
}
