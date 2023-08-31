import 'package:flutter/material.dart';

/*font size start*/
const titleFontSize = 22.0;
const textFontSize = 18.0;
const textSmallFontSize = 16.0;
/*font size end*/

/*font start*/
const boldFontWeight = FontWeight.w700;
const titleFontWeight = FontWeight.w600;
const mediumFontWeight = FontWeight.w500;
const regularFontWeight = FontWeight.w400;
/*font end*/

/* Color start */
const textFieldFromColor = Color(0xFF485668);
const forgetPasswordColor = Color(0xff625c5c);
const CircularContainerColor = Color(0xffebe9eb);
const locationColor = Color(0xff707b81);
const kTextColor =  Color(0xff1a252f);
const heyColor = Color(0xff707b81);
const searchbarColor = Color(0xff707b81);
const kBlueColor = Color(0xff5b9ee1);
const smallTextColor =  Color(0xff707b81);
const kWhiteColor = Colors.white;
const kRedColor = Colors.red;
const kBlack12Color = Colors.black12;

/* Color start */

final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');


const firstGradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(0.917, -0.333),
    end: Alignment(-0.545, 1),
    colors: <Color>[
      Color(0xff0b6efe),
      Color(0x00c4c4c4)
    ],
    stops: <double>[0, 1],
  ),
);

const secondGradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(-0.545, 1),
    end: Alignment(0.917, -0.333),
    colors: <Color>[
      Color(0xff0b6efe),
      Color(0x00c4c4c4),
    ],
    stops: <double>[0, 1],
  ),
);

