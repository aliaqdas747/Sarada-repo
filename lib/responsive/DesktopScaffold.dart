
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/util/AppBar.dart';



class desktopScaffold extends StatefulWidget{

  @override
  State<desktopScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(

          child: Column(
            children: [
              deskAppBar,
              //Row widget for all
              Container(

                color: myColor,
                width: double.infinity,

                child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 100,),
                            SizedBox(
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  cont_soft,
                                  SizedBox(height: 30,),
                                 text_cheap,
                                  SizedBox(height: 30,),
                                  //animated text
                                  SizedBox(
                                    width: 300,
                                    height: 100,
                                    child:animated_text,
                                  ),
                                  SizedBox(height: 50,),
                                  lets_chat
                                ],
                              ),
                            ),
                            SizedBox(width: 150,),
                            img_container,
                          ],
                        ),
                        SizedBox(height: 50,)
                      ],
                    )
                ),
              ),
              //Row Widget for second page
              sec_page,


             SizedBox(height: 1,),
              //My Contact About Widget
              about_container,

            ],
          ),
        )
    );
  }
}
