import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/component/core_component.dart';
import 'package:sesion_2_greek/view/component/home_screen_component/cardcomponent.dart';
import 'package:sesion_2_greek/view_model/cuibts/sections_cubit/sectionscubit_cubit.dart';

import 'home_screen.dart';

class Sections_Screen extends StatelessWidget {
  const Sections_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsCubit()..SectionsData(),
      child: BlocConsumer< SectionsCubit, SectionscubitState>(
        listener: (context, state) {
          // TODO: implement listener
        },

        builder: (context, state) {
          SectionsCubit  myCubit = SectionsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text('Sections', style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25,),),
              actions: [
                Default_PopMenuButton(
                    'All Sections', 'Finished Sections', 'Remaining Sections')

              ],
              leading: IconButton(onPressed: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=> Home_Screen()));
              }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,) ),

            ),
            body: Container(
              child: myCubit.sections_model == null ? Center(child: Text("Loading...")) :
              ListView.builder(
                shrinkWrap: true,
                  itemCount: myCubit.sections_model!.data!.length,
                  itemBuilder: (BuildContext context , int index)
          {
            return Default_Card(myCubit.sections_model!.data![index].sectionSubject.toString(),
                                myCubit.sections_model!.data![index].sectionSubject.toString(),
                                myCubit.sections_model!.data![index].sectionSubject.toString(),
                                myCubit.sections_model!.data![index].sectionSubject.toString(),
                                myCubit.sections_model!.data![index].sectionSubject.toString(),);
          },
            )

          ));
        },
      ),
    );
  }
}
