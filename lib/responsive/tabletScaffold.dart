
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/util/AppBar.dart';




class tabletScaffold extends StatefulWidget{
  @override
  State<tabletScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: appDrawer,
        appBar:mobileAppBar ,
      body: SingleChildScrollView(
        child: Column(
          children: [

            tapAppBar1,
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
                                //
                                cont_soft,
                                SizedBox(height: 30,),
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
                      SizedBox(height: 50,)
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