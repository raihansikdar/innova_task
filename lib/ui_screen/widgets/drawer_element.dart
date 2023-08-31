import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/utils/style.dart';


class DrawerElememt extends StatelessWidget {
  const DrawerElememt({
    super.key, required this.text, required this.image, required this.onTap,
  });
  final String text;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              image,
              height: 25,
              width: 25,
              color: Colors.white54,
            ),
            const SizedBox(width: 16.0,),
            Text(text,
              style: const TextStyle(
                fontSize: textFontSize,
                fontWeight: mediumFontWeight,
                color: kWhiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

