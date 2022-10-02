import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/login.dart';
import 'package:sesion_2_greek/view/pages/settings/faq.dart';

import 'package:sesion_2_greek/view/pages/settings/ourpartenrs.dart';
import 'package:sesion_2_greek/view/pages/settings/support.dart';
import 'package:sesion_2_greek/view/pages/settings/terms&conditions.dart';
import 'package:sesion_2_greek/view_model/cuibts/terms_cubit/terms_cubit.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Settings', style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Text('FAQ', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,),),
                          trailing: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> FAQ()));
                          }, icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.grey,) ),

                        ),
                       Text('____________________________________________________', style: TextStyle(color: Colors.grey[400]),),

                        ListTile(
                          leading: Text('Terms & Conditions', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,),),
                          trailing: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Terms_Conditions()));
                          }, icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.grey,) ),

                        ),
                        Text('____________________________________________________', style: TextStyle(color: Colors.grey[400]),),

                        ListTile(
                          leading: Text('Our Parterns', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,),),
                          trailing: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Our_Partners()));
                          }, icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.grey,) ),

                        ),
                        Text('____________________________________________________', style: TextStyle(color: Colors.grey[400]),),

                        ListTile(
                          leading: Text('Support', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,),),
                          trailing: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Support()));
                          }, icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.grey,) ),

                        ),
                        Text('____________________________________________________', style: TextStyle(color: Colors.grey[400]),),

                        ListTile(
                          leading: Text('Log Out', style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,),),
                          trailing: IconButton(onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Log_out()));
                            showDialog(context: context, builder:
                            (context)=> AlertDialog(
                              title: Text('Logout' ,style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 17,)),
                              content: Text('Are you sure ?' ,style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 17,)),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Settings()));
                                }, child:
                                Text('Cancel',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 12 ,
                                      fontWeight: FontWeight.bold
                                  ),) , style: ElevatedButton.styleFrom(
                                    fixedSize: Size(120, 30),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.deepOrange,
                                            width: 2.5)
                                    )

                                ),),
                                ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_Screen()));
                                },
                                  child:
                                  Text('Sure',
                                    style: GoogleFonts.poppins(
                                     color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                        fontSize: 12,)) ,
                                  style: ElevatedButton.styleFrom(
                                       fixedSize: Size(120, 20),
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )

                                  ),),
                              ],
                            ),
                            );

                          }, icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.grey,) ),

                        ),



                      ],
                    ),

                  ),




                ],
              ),
            ),

        ),
      ),
    );
  }
}
