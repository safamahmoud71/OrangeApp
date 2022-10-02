import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/home/News/news.dart';
class News2 extends StatelessWidget {
  const News2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> News_Screen()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.deepOrange,) ),

      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.white,
                  child: Image.asset('assets/images/logo.png',)),
              //  Container(
              //  height: double.infinity,
              //decoration: BoxDecoration(
              //color: Colors.grey
              //        ),
              //        )
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ODCS', style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('2022-07-06', style: GoogleFonts.poppins(
                  color: Colors.deepOrange,
                  fontSize: 10,),
                ),
              ),
              Center(
                child: Text('ODC Support All Universites', style: GoogleFonts.poppins(
                  color: Colors.grey,

                  fontSize: 20,),),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
