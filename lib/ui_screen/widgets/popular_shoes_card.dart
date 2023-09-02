import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innova_task/ui_screen/screen/details_screen.dart';
import 'package:innova_task/ui_screen/utils/style.dart';

class PopularShoesCard extends StatelessWidget {
  const PopularShoesCard({
    super.key,
    required this.image,
    required this.title,
    required this.name,
    required this.price,
    required this.onTap, 
    required this.tagId,
  });

  final String image;
  final String title;
  final String name;
  final String price;
  final VoidCallback onTap;
  final String tagId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>  DetailsScreen(tagId: tagId,image: image,), transition: Transition.rightToLeft,duration:const Duration(milliseconds: 600));
      },
      child: Card(
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: tagId,
                    transitionOnUserGestures: true,
                    child: Image.asset(image, height: 120, width: 135),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: textFontSize,
                      fontWeight: regularFontWeight,
                      color: kBlueColor,
                      letterSpacing: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: textFontSize,
                        fontWeight: mediumFontWeight,
                        color: kTextColor,
                      ),
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: textFontSize,
                      fontWeight: regularFontWeight,
                      color: kTextColor,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
