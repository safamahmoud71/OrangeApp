import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';

class Our_Partners extends StatelessWidget {
  const Our_Partners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Our Partners',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> Settings()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.deepOrange,) ),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: 500,
                decoration: const BoxDecoration(
                  gradient:  LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFFBDBDBD),Color(0xFFFAFAFA), Color(0XFFBDBDBD)], ),
                ),
                child:
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ODC', style: GoogleFonts.poppins(
                            color: Colors.white,

                            fontSize: 25,),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Center(
                          child: Expanded(
                            child: Text('range', style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,),),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Digital Center', style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,),),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                  ],

                ),
              ),
            ),
          )],

      ),
    );
  }
}
