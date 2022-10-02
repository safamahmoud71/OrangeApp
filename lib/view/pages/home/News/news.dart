import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/home/News/news2.dart';

class News_Screen extends StatelessWidget {
  const News_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: Text('News', style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 25,),),

      ),

      body: GestureDetector(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>News2())),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey[300],

                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: Offset(0, 2),

                )]
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Hero(
                          tag: 'image',
                          child: Image.asset('assets/images/logo.png',)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('ODCS', style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          height: 40,
                          width: 80,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.share , color: Colors.white, size: 20,),
                              ),
                              Expanded(
                                child: VerticalDivider(
                                  width: 20,
                                  endIndent: 5,
                                  indent: 10,

                                  color: Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(Icons.copy , color: Colors.white,size: 20,),
                              ),
                            ],

                          ),
                        ),
                      )
                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 210, left: 10),
                    child: Container(
                      child: Text('ODC Support All Universites', style: GoogleFonts.poppins(
                        color: Colors.white,

                        fontSize: 20,),),
                    ),
                  ),

             ],
              ),
            ),
          )
        ),
      ),
    );

  }
}


