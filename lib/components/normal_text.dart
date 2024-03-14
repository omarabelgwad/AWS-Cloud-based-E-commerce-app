import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget normalText({
  required String yourTitle,
  required double fontSize,
  TextAlign alignment=TextAlign.center,

})
{
  return Text(
    yourTitle,
    style: GoogleFonts.aBeeZee(
      fontSize: fontSize,
      wordSpacing:0,
      letterSpacing: 0,
    ),
    textAlign: alignment,


  );

}
