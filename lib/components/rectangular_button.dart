import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget rectangularButton({
  required String buttonText,
  required double fontSize,
  required double width,
  required double height,
  TextAlign alignment=TextAlign.center,


})
{

  return Container(

    width: width,
    height: height,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.grey,
    ),
    child:Text(
      buttonText,
      textAlign: TextAlign.center,
      style: GoogleFonts.aBeeZee(
          fontSize: fontSize,
          wordSpacing:0,
          letterSpacing: 0,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
  );

}
