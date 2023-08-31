import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_task/app.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';


void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(const InnovaTask());
}

