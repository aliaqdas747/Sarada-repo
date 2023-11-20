
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/util/AppBar.dart';



class desktopScaffold extends StatefulWidget{

  @override
  State<desktopScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<desktopScaffold> {
  bool isExpanded = false;
  double containerHeight = 50;
  double containerWidth = 40;
  double opacityValue = 0.0;



   Decoration my_dec =BoxDecoration(
     color: Color(0xFF10EFB1),
     borderRadius: BorderRadius.circular(10),

   );

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




                            //Animated Container
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  if(isExpanded){
                                    containerHeight=40;
                                    containerWidth=40;
                                    opacityValue=0;


                                  }else{
                                    containerHeight=300;
                                    opacityValue=1;
                                  }
                                  isExpanded=!isExpanded;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(seconds: 2),
                                width: containerWidth,
                                height: containerHeight,
                                decoration: my_dec,
                                child: AnimatedOpacity(
                                  opacity: opacityValue,
                                  duration: Duration(seconds: 2,),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.account_circle),
                                        Icon(Icons.language_sharp),
                                        Icon(Icons.facebook),
                                        Icon(Icons.mail),

                                      ],
                                    ),
                                  ),


                                ),
                              ),

                            ),





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
                                  lets_chat,

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
