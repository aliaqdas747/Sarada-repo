import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/util/AppBar.dart';

import 'package:gap/gap.dart';


class mobileScaffold extends StatefulWidget{
  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  double _width = 50.0;
  double _height = 100.0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    drawer: appDrawer,
    appBar:mobileAppBar ,
    body: SingleChildScrollView(
      child: Column(
        children: [

          //page1
          Container(

            color: myColor,
            width: double.infinity,

            child: Center(
                child:  Column(
                  children: [
                    img_container,
                    Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  img_container,
                        SizedBox(width: 100,),


                        SizedBox(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Gap(50),
                              //
                              cont_soft,
                              Gap(30),
                              text_cheap,
                              SizedBox(height: 30,),
                              animated_text,
                              SizedBox(height: 50,),
                             lets_chat

                            ],
                          ),
                        ),

                        SizedBox(width: 150,),
                      ],
                    ),
                  ],
                )
            ),
          ),


          //page2
          sec_page,

          SizedBox(height: 1,),
     
          about_cont_mob,
          //    about_container,

        ],
      ),
    )
  );
  }
}
