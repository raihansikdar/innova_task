import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/screen/main_screen.dart';
import 'package:innova_task/ui_screen/screen/menu_screen.dart';


class HomePage extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        borderRadius: 24.0,
        showShadow: false,
        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.blue,
        slideWidth: MediaQuery.of(context).size.width * 0.65,

      )
    );
  }
}







