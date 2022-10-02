import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
Widget Default_Card(String courseName,String startTime , String endTime,String courseDay , String typeOfDay)
{
  return Center(
    child: Container(
      decoration: BoxDecoration(


      ),
      width: 350,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, ),
        child: (
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(courseName, style:  GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,),),
                      SizedBox(width: 180,),
                      Row(
                        children: [
                          Icon(Icons.timer,size: 20,),
                          Text("2"),
                          Text('hrs', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: Row(
                    children: [
                      Text('Lecture Day', style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 13,),),
                      SizedBox(width: 50,),
                      Text('Start Time', style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 13),),
                      SizedBox(width: 50,),
                      Text('End Time', style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 13,),)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/event.svg', width: 20, height: 20,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text(courseDay , style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,),),
                      SizedBox(width: 10,),
                      SvgPicture.asset('assets/icons/time.svg', width: 20, height: 20,color: Colors.green,),
                      SizedBox(width: 5,),
                      Text(startTime,style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,),),
                      SizedBox(width: 10,),
                      SvgPicture.asset('assets/icons/time.svg', width: 20, height: 20,color: Colors.redAccent,),
                      SizedBox(width: 5,),
                      Text(endTime , style:GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,), ),

                    ],
                  ),
                ),
              ],
            ),
          ),

        )
        ),
      ),
    ),
  );
}

Widget Default_PopMenuButton(String x1 , String x2 , String x3)
{
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: PopupMenuButton(
      child: (SvgPicture.asset('assets/icons/filter.svg', width: 20, height: 25,color: Colors.deepOrange,)),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text(x1 , style:GoogleFonts.poppins(
              color: Colors.black,

              fontSize: 18,), ),
            value: 1,
          ),
          PopupMenuItem(
            child: Text(x2 , style:GoogleFonts.poppins(
              color: Colors.black,

              fontSize: 18,), ),
            value: 1,
          ),
          PopupMenuItem(
            child: Text(x3 , style:GoogleFonts.poppins(
              color: Colors.black,

              fontSize: 18,), ),
            value: 1,
          ),
        ]
    ),
  );

}
