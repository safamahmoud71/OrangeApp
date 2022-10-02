import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/settings/setting_home.dart';
import 'package:sesion_2_greek/view_model/cuibts/terms_cubit/terms_cubit.dart';
import 'package:simple_html_css/simple_html_css.dart';

class Terms_Conditions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      TermsCubit(),
      child: BlocConsumer<TermsCubit, TermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsCubit myCubit = BlocProvider.of(context)..GetTermsData();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text('Terms & Conditions', style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,),),

              leading: IconButton(onPressed: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=> Settings()));
              }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,) ),

            ),

            body:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:myCubit.terms_model == null? Center(child: CircularProgressIndicator(),)
                  :SingleChildScrollView(
                child: Container(
                  child:RichText(
                    textAlign: TextAlign.center,
                    text: HTML.toTextSpan(context,
                        myCubit.termsData!,
                       defaultTextStyle: TextStyle(
                         color: Colors.grey,
                         fontSize: 19,
                         decoration: TextDecoration.none
                       )
                    ),
                  ),
                ),
              ),
            ),

          );
        },
      ),
    );
  }
}
