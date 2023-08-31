import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/utils/style.dart';
import 'package:innova_task/ui_screen/widgets/custom_circle_container.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    super.key,
    required this.controller,
  });

  final MyDrawerController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCircleContainer(
          height: 50,
          width: 50,
          borderRadius: 25,
          color: kWhiteColor,
          onTap: () {

          },
          child: GestureDetector(
              onTap:  controller.toggleDrawer,
              child: const Icon(Icons.dataset_outlined)),
        ),
        const Column(
          children: [
            Text("Store location",
              style: TextStyle(
                fontSize: textSmallFontSize,
                fontWeight: mediumFontWeight,
                color: locationColor,
              ),
            ),
           Row(
             children: [
               Icon(Icons.location_on,size: 16,color: kRedColor,),
               SizedBox(width: 4.0,),
               Text("Mondolibug, Sylhet",
                 style: TextStyle(
                   fontSize: textSmallFontSize,
                   fontWeight: mediumFontWeight,
                   color: kTextColor,
                 ),
               ),
             ],
           )
          ],
        ),
        CustomCircleContainer(
          height: 50,
          width: 50,
          borderRadius: 25,
          color: kWhiteColor,
          onTap: () {  },
          child: Stack(
            children: [
              Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kRedColor,
                    ),
                  ),
              ),
              Center(
                  child: Image.asset(
                    "assets/icons/bag.png",
                    height: 25,
                    width: 25,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}