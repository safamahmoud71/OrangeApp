import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/component/core_component.dart';
import 'package:sesion_2_greek/view_model/cuibts/midterms/midterms_cubit.dart';

import 'home_screen.dart';

class Finals_Screen extends StatelessWidget {
  const Finals_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      MidtermsCubit()..MidtermsData(),
      child: BlocConsumer<MidtermsCubit, MidtermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermsCubit myCubit = MidtermsCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,

                backgroundColor: Colors.white,
                title: Text('Finals', style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,),),
                actions: [
                  Default_PopMenuButton(
                      'All Finals', 'Finished finals', 'Remaining finals')

                ],
                leading: IconButton(onPressed: (){
                  Navigator.pop(context,MaterialPageRoute(builder: (context)=> Home_Screen()));
                }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,) ),

              ),
              body: Container(
                child: myCubit.midtermData == null ? Center(child:  Text ("Loading..."),):
                ListView.builder(
                    shrinkWrap: true,
                    itemCount:myCubit.midtermData!.data!.length ,
                    itemBuilder:(BuildContext context , int index)
                    {
                      return myCubit.midtermData!.data![index].isFinal == true ?Default_Card(myCubit.midtermData!.data![index].examSubject.toString(),
                        myCubit.midtermData!.data![index].examSubject.toString(),
                        myCubit.midtermData!.data![index].examSubject.toString(),
                        myCubit.midtermData!.data![index].examSubject.toString(),
                        myCubit.midtermData!.data![index].examSubject.toString(),) : SizedBox();
                    }),
              )

          );
        },
      ),
    );
  }
}
