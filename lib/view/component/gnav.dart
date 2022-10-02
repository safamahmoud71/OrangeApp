import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sesion_2_greek/view_model/cuibts/gnav_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GnavCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<GnavCubit, GnavState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            GnavCubit myCubit = GnavCubit.get(context);
            return Scaffold(
              body: myCubit.pages[myCubit.currentIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(

                  //you can set more BoxShadow() here

                ),
                height: 60,
                child: GNav(


                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    color :Colors.black,
                    selectedIndex: myCubit.currentIndex,
                    tabBackgroundColor:Colors.grey[100]! ,
                    // haptic feedback
                    // tabBorderRadius: 15,
                    // tabActiveBorder: Border.all(color: Colors.grey, width: 1),
                    // tab button border
                    //tabBorder: Border.all(color: Colors.grey, width: 1),
                    // tab button border
                    tabShadow: [
                      BoxShadow(
                          color: Colors.grey[200]!.withOpacity(0.5), )
                    ],
                    // tab button shadow

                    // tab animation curves
                    duration: Duration(milliseconds: 400),
                    // tab animation duration
                    gap: 8,

                    activeColor: Colors.deepOrange,

                    iconSize: 24,

                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    // navigation bar padding
                    onTabChange: (value) {
                      myCubit.changeCurrent(value);
                    },
                    tabs: [
                      GButton(
                        leading: SvgPicture.asset('assets/icons/home.svg',
                        width: 24,), icon: Icons.home,
                        text: 'Home',
                        textStyle: GoogleFonts.poppins(
                          color: Colors.black,

                          fontSize: 18,),
                      ),
                      GButton(
                        icon: Icons.newspaper,
                        text: 'News',
                        textStyle: GoogleFonts.poppins(
                          color: Colors.black,

                          fontSize: 18,),

                      ),
                      GButton(

                        icon: Icons.settings,
                        text: 'Settings',
                        textStyle: GoogleFonts.poppins(
                          color: Colors.black,

                          fontSize: 18,), ),

                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
