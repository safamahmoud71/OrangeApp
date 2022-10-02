import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/component/core_component.dart';
import 'package:sesion_2_greek/view/pages/home/home_screen.dart';
import 'package:sesion_2_greek/view_model/cuibts/lecture_cubit/lecture_cubit.dart';

class Lecture_Screen extends StatelessWidget {
  const Lecture_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..LecturesData(),
      child: BlocConsumer<LectureCubit, LectureState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureCubit myCubit = LectureCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text(
                'Lectures',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),

              ),
              leading: IconButton(onPressed: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=> Home_Screen()));
              }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,) ),

              actions: [
                Default_PopMenuButton(
                    'All Lectures', 'Finished Lectures', 'Remainig Lectures')
              ],
            ),
            body: Container(
                child: myCubit.lectureData == null
                    ? Center(child: Text("Loading..."))
                    : ListView.builder(
                        itemCount: myCubit.lectureData!.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Default_Card(
                              myCubit.lectureData!.data![index].lectureSubject.toString(),
                              myCubit.lectureData!.data![index].lectureDate.toString(),
                              myCubit.lectureData!.data![index].lectureEndTime.toString(),
                              myCubit.lectureData!.data![index].lectureSubject.toString(),
                              myCubit.lectureData!.data![index].lectureStartTime.toString());
                        },
                      )),
          );
        },
      ),
    );
  }
}
