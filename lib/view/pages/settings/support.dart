import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';
class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Support', style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 25,),),

        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> Settings()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.deepOrange,) ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30 , left: 15 , right: 15 , bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(

                decoration: const InputDecoration(
                  filled: true,
                  fillColor:   Color(0xFFFEEEEEE),


                  prefixIcon: Icon(Icons.person, color: Colors.grey,),

                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5.0,
                      ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),


                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10),),
                      borderSide: BorderSide(
                        width: 3,
                          color: Colors.orange


                      )
                  ),

                  hintText: 'Name',

                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(

                decoration: const InputDecoration(
                  filled: true,
                  fillColor:   Color(0xFFFEEEEEE),


                  prefixIcon: Icon(Icons.email, color: Colors.grey,),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),


                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),),
                      borderSide: BorderSide(
                        width: 3,
                          color: Colors.orange


                      )
                  ),

                  hintText: 'E-Mail',

                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'What’s making You unhappy?',


                  filled: true,
                  fillColor:   Color(0xFFFEEEEEE),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),),
                      borderSide: BorderSide(
                        width: 3,
                          color: Colors.orange
                      )
                  ),


                ),
                maxLines:  10,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){

              }, child:
              Text(' Submit',

                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold
                ),) , style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 50),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.deepOrange,
                          width: 2.5)
                  )

              ),),
            ],
          ),
        ),
      ),
    );
  }
}
