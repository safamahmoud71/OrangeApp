import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          elevation: 0,


          backgroundColor: Colors.white,
          title: Text('FAQ', style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,),),

          leading: IconButton(onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=> Settings()));
          }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.deepOrange,) ),

        ),
        body:

          ExpansionWidget(
          initiallyExpanded: true,
          titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
            return InkWell(
                onTap: () => toogleFunction(animated: true),
                child: Padding(
                  padding: EdgeInsets.only(left: 10 ,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(  topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20))
                    ),

                    height: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Q1 : How many countries Orange Digital center is in ?', style:
                          GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,),),
                        )),
                        Transform.rotate(
                          angle: math.pi * animationValue / 2,
                          child: Icon(Icons.keyboard_arrow_down_outlined, size: 20),
                          alignment: Alignment.center,
                        )
                      ],
                    ),
                  ),
                ));
          },
          content: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20)
                ),
              ),
              width: double.infinity,

              padding: EdgeInsets.all(20),
              child: Center(
                child: Text('16 Country', style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,),),
              ),
            ),
          )),
      ),
    );
  }
}
