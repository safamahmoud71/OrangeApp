import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sesion_2_greek/view/pages/home/event.dart';
import 'package:sesion_2_greek/view/pages/home/finals.dart';
import 'package:sesion_2_greek/view/pages/home/lecture.dart';
import 'package:sesion_2_greek/view/pages/home/midterms.dart';
import 'package:sesion_2_greek/view/pages/notes/notes.dart';
import 'package:sesion_2_greek/view/pages/home/sections.dart';

import '../../component/home_screen_component/cardcomponent.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Orange ',
                        style: GoogleFonts.poppins(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'Digtal Center',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            child: Home_Card('assets/icons/lecture.svg', 'Lectures',

                             ),
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Lecture_Screen()));

                            } ,
                          ),
                          InkWell(child: Home_Card('assets/icons/midterm.svg', 'Midterms',),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Midterm_Screen()));

                          },),
                          InkWell(
                            child: Home_Card('assets/icons/event.svg', 'Events',

                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Events_Screen()));

                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Home_Card(
                              'assets/icons/sections.svg', 'Sections',),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Sections_Screen()));

                            },
                          ),
                          InkWell(child: Home_Card('assets/icons/final.svg', 'Finals'),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Finals_Screen()));

                          },),
                          InkWell(child: Home_Card('assets/icons/notes.svg', 'Notes'),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Notes_page()));

                          },),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: Container(
        //   height: 30,
        //   child: GNav(
        //
        //       rippleColor: Colors.grey[300]!,
        //       backgroundColor: Colors.white,
        //       hoverColor: Colors.grey[100]!,
        //       gap: 8,
        //       activeColor: Colors.deepOrange,
        //       iconSize: 24,
        //       padding: EdgeInsets.symmetric(horizontal: 15),
        //       duration: Duration(milliseconds: 400),
        //       tabBackgroundColor: Colors.grey[100]!,
        //       color: Colors.black,
        //       tabs: [
        //         GButton(
        //           icon: Icons.home,
        //           text: 'Home',
        //           leading: SvgPicture.asset("assets/icons/home.svg"),
        //         ),
        //         GButton(icon: Icons.newspaper, text: 'News'),
        //         GButton(
        //           icon: Icons.settings,
        //           text: 'Settings',
        //           leading: SvgPicture.asset("assets/icons/settings.svg"),
        //         )
        //       ]),
        // ),
      ),
    );
  }
}
