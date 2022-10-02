
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Home_Card(String x , String text ,)
{
  return Container(
   width: 170,
    height: 140,
   decoration: BoxDecoration(

   ),
    child: Padding(
      padding: const EdgeInsets.only(top:5 , bottom: 2),
      child: Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),),
        elevation: 10,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             CircleAvatar(
               backgroundColor: Colors.grey[200],
                 radius: 30,
                 child: SvgPicture.asset(x, width: 40, height: 40,color: Colors.deepOrange,)),
             SizedBox(
               height: 10,
             ),
             Text (text,
             style: GoogleFonts.poppins(
               color: Colors.deepOrange,
               fontWeight: FontWeight.bold,
               fontSize: 20,),)
           ],
         ),
      ),
    ),
  );
}



