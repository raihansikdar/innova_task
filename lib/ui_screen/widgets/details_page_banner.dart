import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/controller/drawer_controller.dart';
import 'package:innova_task/ui_screen/utils/style.dart';
import 'package:innova_task/ui_screen/widgets/custom_circle_container.dart';

class DetailsPageBanner extends StatelessWidget {
  const DetailsPageBanner({
    super.key,
  });



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
            Navigator.pop(context);
          },
          child: Center(child: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        const Text("Men’s Shoes",
          style: TextStyle(
            fontSize: textFontSize,
            fontWeight: mediumFontWeight,
            color: kTextColor,
          ),
        ),
        CustomCircleContainer(
          height: 50,
          width: 50,
          borderRadius: 25,
          color: kWhiteColor,
          onTap: () {  },
          child: Center(
              child: Image.asset(
                "assets/icons/bag.png",
                height: 25,
                width: 25,
              )),
        ),
      ],
    );
  }
}