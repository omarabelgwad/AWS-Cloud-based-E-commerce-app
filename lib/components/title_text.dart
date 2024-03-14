import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleText({
  required String yourTitle,
  required double fontSize,
   align,


})
{
  return Text(
    yourTitle,
    style: GoogleFonts.aBeeZee(
      fontSize: fontSize,
      wordSpacing:0,
      letterSpacing: 0,
      fontWeight: FontWeight.bold
    ),
    textAlign: align,
  );

}
