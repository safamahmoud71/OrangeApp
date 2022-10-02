import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_2_greek/view/pages/home/home_screen.dart';
import 'package:sesion_2_greek/view/pages/signup.dart';
import 'package:sesion_2_greek/view_model/cuibts/login_cubit/logincubit.dart';
import 'package:sesion_2_greek/view_model/cuibts/login_cubit/loginstates.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> Login_Cubit(),
        child: BlocConsumer < Login_Cubit , Loginstate>(
          listener: (context , state){},
          builder:(context , state){
            Login_Cubit myCubit = Login_Cubit.get(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(


                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Orange ', style:
                                TextStyle(color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),),
                                Text('Digtal Center' , style: TextStyle(
                                    fontSize: 25 , fontWeight: FontWeight.bold
                                ),)

                              ],
                            ),
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Login',
                          style: TextStyle(
                              fontSize: 30
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          controller: myCubit.emaillogin,
                          decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange

                                  )
                              ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),

                            labelText: 'E-Mail',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20 ,right: 20),
                        child: BlocConsumer<Login_Cubit, Loginstate>(
                         listener: (context, state) {
                        // TODO: implement listener
                         },
                        builder: (context, state) {
                        Login_Cubit mycubit= Login_Cubit.get(context);


                        return TextFormField(
                          obscureText: mycubit.ispressed,
                          controller: myCubit.passlogin,

                          decoration:  InputDecoration(
                              suffixIcon: IconButton(
                                 onPressed: (){
                                   mycubit.showPassword();
                                 }, icon: Icon(mycubit.ispressed
                              ? Icons.remove_red_eye
                              :Icons.visibility_off, color: Colors.deepOrange,),),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),

                                ),
                              ),


                              labelText: 'Password',
                              labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey[700]
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange

                                  )
                              )


                          ),
                        );
  },
),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextButton(onPressed: (){}, child:
                        Text("Forget Password?",
                          style: TextStyle(
                              color: Colors.orange,
                              decoration: TextDecoration.underline
                          ),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: ElevatedButton(onPressed: (){
                          myCubit.login(context);



                        },
                          child:
                        Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold
                          ),) , style: ElevatedButton.styleFrom(
                            fixedSize: Size(370, 50),
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )

                        ),),

                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey, //color of divider
                              height: 50, //height spacing of divider
                              thickness: 1, //thickness of divier line
                              indent: 20, //spacing at the start of divider
                              endIndent: 10, //spacing at the end of divider
                            ),
                          ),
                          Text('OR',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),),
                          Expanded(
                            child: Divider(
                              color: Colors.grey, //color of divider
                              height: 20, //height spacing of divider
                              thickness: 1, //thickness of divier line
                              indent: 20, //spacing at the start of divider
                              endIndent: 10, //spacing at the end of divider
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp_Screen()));
                        }, child:
                        Text('Sign Up',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 20 ,
                              fontWeight: FontWeight.bold
                          ),) , style: ElevatedButton.styleFrom(
                            fixedSize: Size(370, 50),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.deepOrange,
                                    width: 2.5)
                            )

                        ),),

                      ),





                    ],
                  ),
                ),
              ),
            );
          } ,
        ),

    );
  }
}
