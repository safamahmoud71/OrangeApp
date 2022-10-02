import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height:20 ,
              ),
              Text(
                'Add Notes',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height:20 ,
              ),
              TextFormField(

                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                ),
                  ),

                  labelText: 'Title',
                  hintText: 'Title,'
                ),
              ),
              SizedBox(
                height:20 ,
              ),
              TextFormField(

                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),

                  labelText: 'Date',

                ),
              ),
              SizedBox(
                height:20 ,
              ),
          TextField (
            cursorHeight: 30,

            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter Note',
                hintText: 'Note'
            ),
          ),
              SizedBox(
                height:25 ,
              ),
              ElevatedButton(onPressed: (){}, child:
              Text(
                '+ Add',
                style: GoogleFonts.poppins(
                  color: Colors.black,

                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey[200]

              ),)
          ],

          ),
        ),
      ),
    );
  }
}
