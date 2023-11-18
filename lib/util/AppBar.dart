import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//Color(0xFF10EFB1)
//Color(0xFF10EFB1)
var deskAppBar =  Container(width: double.infinity,
  color: Colors.grey.shade800,
  height: 150,
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RichText(
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'font1',
                color: Colors.white,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(text: '</>Muhammad ',style: TextStyle(fontFamily:'font1',fontWeight: FontWeight.w900,color: Color(0xFF10EFB1),)),
                TextSpan(text: 'Ali Aqdas',style: TextStyle(fontWeight: FontWeight.w200,fontFamily:' font1'))
              ]
          ),
        ),

        Row(
          children: [
            f_Container(imgPath2: 'assets/images/facebook.png', text2: ' Facebook  ',  onTap: () => launch('https://m.facebook.com/profile.php/?id=100093957392314'),   ),

            f_Container(imgPath2: 'assets/images/instagram.png', text2: ' Instagram  ',  onTap: () => launch('https://www.instagram.com/ali_aqdas1/'),   ),
            SizedBox(height: 5,),
            f_Container(imgPath2: 'assets/images/linkedin.png', text2: ' Linkedin  ',  onTap: () => launch('https://www.linkedin.com/in/ali-aqdas-72504b252/'),   ),



            ]),
      ],
    ),
  ),
);
var myColor = Colors.grey.shade800;
var cont_soft = Container(
  color: Color(0xFF10EFB1),
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text('Software Developer'),
  ),
);
//second page small container
class cont3_box extends StatelessWidget{
  final String text1;
  final String imagePath;
  final String text2;
  final String text3;

  const cont3_box({super.key, required this.text1, required this.imagePath, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(5),
  color: Colors.grey.shade800,
),
     
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text1,style:TextStyle(
                  fontSize:17 ,
                  color: Color(0xFF10EFB1),
                  fontFamily: 'font1',
                )),
                Image.asset(imagePath,width: 40,height: 40,),
              ],
            ),
            Text(text2,style:TextStyle(
              fontSize:15 ,
              color: Colors.white,
              fontFamily: 'font1',
            )),
            Text(text3,style:TextStyle(
              fontSize:13 ,
              color: Colors.white,
              fontFamily: 'font1',
            )),
          ],
        ),
      ),
    );
  }

}
//first Page Container
class f_Container extends StatelessWidget {
  final String imgPath2;
  final String text2;
  final VoidCallback onTap;

  const f_Container({super.key,
    required this.imgPath2,
    required this.text2,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: onTap,
     child: Container(

       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(imgPath2,height: 20,),
             Text(text2,style: TextStyle(color: Color(0xFF15AB81)),)
           ],
         ),
       )
     ),
   );
  }

}
var about_cont_mob =  Container(
  width: double.infinity,
  color: Colors.grey.shade800,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
            style: TextStyle(
              fontFamily: 'font1',
              color: Colors.white,
              fontSize: 20 ),
            children: <TextSpan>[
              TextSpan(text: '</>Muhammad ',
                  style: TextStyle(
                    fontFamily: 'font1', fontWeight: FontWeight
                      .w900, color: Color(0xFF10EFB1),)),
              TextSpan(text: 'Ali Aqdas',
                  style: TextStyle(fontWeight: FontWeight.w200,
                      fontFamily: ' font1'))
            ]
        ),
      ),
      SizedBox(height: 50,),
      //mobile bottom about
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Copyright©2023 Al_Bastie.dev',
            style: TextStyle(color: Colors.white),),
          Text('All Right reserved',
            style: TextStyle(color: Colors.white),),
          Text('albasti2611@gmail.com',
            style: TextStyle(color: Colors.white),),],
      ),
      SizedBox(height: 30,)
    ],
  ),
);
var about_container =  Container(
  width: double.infinity,
  color: Colors.grey.shade800,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
            style: TextStyle(
              fontFamily: 'font1',
              color: Colors.white,
              fontSize: 20,
            ),
            children: <TextSpan>[
              TextSpan(text: '</>Muhammad ',
                  style: TextStyle(
                    fontFamily: 'font1', fontWeight: FontWeight
                      .w900, color: Color(0xFF10EFB1),)),
              TextSpan(text: 'Ali Aqdas',
                  style: TextStyle(fontWeight: FontWeight.w200,
                      fontFamily: ' font1'))
            ]
        ),
      ),
      SizedBox(height: 50,),
      Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Copyright©2023 Al_Bastie.dev',
            style: TextStyle(color: Colors.white),),
          Text('All Right reserved',
            style: TextStyle(color: Colors.white),),
          Text('albasti2611@gmail.com',
            style: TextStyle(color: Colors.white),),],
      ),
      SizedBox(height: 30,)
    ],
  ),
);
var img_container =Container(
  child: Stack(
    children: [
      Stack(
      children  : [

        CircleAvatar(
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
            child: Image.asset(
              'assets/images/img_4.png', width: 400,
              height: 400,),
          ),
          radius: 150,
          backgroundColor: Color(0xFF10EFB1),
        ),
        Positioned(

            child: Image.asset('assets/images/fy2.png',height: 80,)),
        Positioned(
            top: 120,
            child: Image.asset('assets/images/and.png',height: 80,)),
        Positioned(
           left: 200,

            //  bottom: 0,
            child: Image.asset('assets/images/img_1.png',height: 30,)),
        Positioned(
            top: 120,
            left: 230,
          //  bottom: 0,
            child: Image.asset('assets/images/dart.png',height: 80,))
      ]
      )
    ],
  ),
);
var lets_chat =  InkWell(
  onTap: () => launch('https://mail.google.com/mail/u/0/?fs=1&to=albasti2611@gmail.com&tf=cm'),
  child:Text('Lets Chat', style: TextStyle(
    color: Color(0xFF10EFB1),
    fontSize: 30,
    shadows: [
      Shadow(
          offset: Offset(2.0, 2.0),
          blurRadius: 3.0,
          color: Color(0xFF10EFB1)

      )
    ],
  ),),
);
var text_cheap = Container(
  margin: EdgeInsets.only(left: 5),
  child:   Text(
      'Talk is cheap.\nShow me the code.',
      style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w900,fontFamily: 'font1')
  ),
);
var animated_text =   SizedBox(
  width: 300,
  height: 100,
  child: AnimatedTextKit(
    repeatForever: true,
    animatedTexts: [

      TyperAnimatedText(
          'I"am  a flutter developer',textStyle:TextStyle(color: Color(0xFF10EFB1),fontSize: 20,fontFamily: 'font1')),
      TyperAnimatedText(
          'I can develop Android & IOS applications',textStyle:TextStyle(color: Color(0xFF10EFB1),fontSize: 20,fontFamily: 'font1')),
      TyperAnimatedText(
          'I can make Web Applications for your business',textStyle:TextStyle(color: Color(0xFF10EFB1),fontSize: 20,fontFamily: 'font1')),

    ],),
);
var sec_page =  Container(
  child: Container(
    margin: EdgeInsets.all(10),
    child: Wrap(
     alignment: WrapAlignment.spaceEvenly,
      children: [
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(height: 100,),
            cont3_box(text1: 'Flutter Development',
                imagePath: 'assets/images/img.png',
                text2: 'freelancing',
                text3: '"Flutter expert, crafting seamless cross-platform apps with creativity and precision."'),
            SizedBox(height: 20,),
            cont3_box(text1: 'Backend Development',
                imagePath: 'assets/images/backend.png',
                text2: 'Freelancing',
                text3: '"Expert backend developer specializing in Flutter, creating seamless and user-friendly mobile experiences."'),
            SizedBox(height: 20,),
            cont3_box(text1: ' Dart Development',
                imagePath: 'assets/images/img_2.png',
                text2: 'Freelancing',
                text3: '"Seasoned developer proficient in Dart and Flutter, crafting exceptional mobile experiences with expertise and finesse."'),
          //  SizedBox(height: ,),


          ],
        ),
        SizedBox(width: 40,),

        Container(
          margin: EdgeInsets.only(top: 100,bottom: 50),
            width: 400,
            //      color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello! I"am Ali Aqdas', style: TextStyle(fontSize: 25,color: Color(0xFF10EFB1),fontFamily: 'font1')),
                Text(
                  '"Passionate Flutter developer with a keen eye for detail and a dedication to creating exceptional user experiences. Skilled in crafting intuitive cross-platform applications, I bring creativity, expertise, and innovation to every project I undertake.\n\n'
                      '"Driven by a relentless pursuit of excellence, I thrive in collaborative environments, embracing challenges and transforming ideas into elegant, functional solutions. With a strong foundation in both backend development and Flutter, I am committed to pushing boundaries and delivering results that exceed expectations.""',
                  style :TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'font1')),

              ],
            )
        ),
        SizedBox(width: 10,)

      ],
    ),
  ),
  color: Colors.grey.shade700,
  width: double.infinity,
);
//appbar for tablet size
var tapAppBar1 =  Container(

  width: double.infinity,
  color: Colors.grey.shade800,
  height: 100,

);
var mobileAppBar =AppBar(

  backgroundColor: Colors.grey.shade800,

  title:Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.white,

            ),
            children: <TextSpan>[
              TextSpan(text: '</>Muhammad ',style: TextStyle(fontWeight: FontWeight.w900,color:Color(0xFF10EFB1),fontFamily:'font1')),
              TextSpan(text: 'Ali Aqdas',style: TextStyle(fontWeight: FontWeight.w200,fontFamily:'font1'))
            ]
        ),
      ),

    ],
  ),
);
var appDrawer =  Drawer(

backgroundColor: Colors.grey.shade600,
child:  Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
const DrawerHeader(child: Column(
children: [
Icon(Icons.account_circle,size: 100,color: Color(0xFF10EFB1),),
Text('Ali Aqdas',style: TextStyle(fontFamily: 'font1',fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),)
],
),
),
Container(
margin: EdgeInsets.only(left: 5,right: 5),
width: double.infinity,
color: Color(0xFF10EFB1),
child: f_Container(imgPath2: 'assets/images/facebook.png', text2: ' aliaqdas_1  ',  onTap: () => launch('https://www.facebook.com/alimughal.ali.9809/'),   )),
SizedBox(height: 5,),
Container(
margin: EdgeInsets.only(left: 5,right: 5),
width: double.infinity,
color: Color(0xFF10EFB1),
child: f_Container(imgPath2: 'assets/images/instagram.png', text2: ' aliaqdas_1  ',  onTap: () => launch('https://www.instagram.com/ali_aqdas1/'),   )),
SizedBox(height: 5,),
Container(
margin: EdgeInsets.only(left: 5,right: 5),
width: double.infinity,
color: Color(0xFF10EFB1),
child: f_Container(imgPath2: 'assets/images/linkedin.png', text2: ' Ali Aqdas  ',  onTap: () => launch('https://www.linkedin.com/in/ali-aqdas-72504b252/'),   )),



],
),
);