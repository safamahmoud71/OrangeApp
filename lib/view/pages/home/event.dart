import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';



class Events_Screen extends StatelessWidget {
  const Events_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,

      backgroundColor: Colors.white,
      title: Text('Events', style: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 25,),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> Home_Screen()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,) ),


      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Calendar(
                weekendOpacityEnable: true,
                previous: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300]!,
                            spreadRadius: 1.5,
                            blurRadius: 5,
                            offset: Offset(2.0, 0.0))
                      ]),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.orange,
                    ),
                  ),
                ),
                next: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300]!,
                            spreadRadius: 1.5,
                            blurRadius: 5,
                            offset: Offset(2.0, 0.0))
                      ]),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.orange,
                    ),
                  ),
                ),
                space: 20,
                onSelected: print,
                backgroundColor: Colors.white,
                activeColor: Colors.orange,
                textStyleDays: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black),
                textStyleWeekDay:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                titleStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                selectedStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}

