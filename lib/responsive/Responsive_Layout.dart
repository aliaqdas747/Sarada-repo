import 'package:flutter/cupertino.dart';

class responsive_Layout extends StatelessWidget{
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const responsive_Layout({super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold});
  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(builder: (context,constrant){
     if(constrant.maxWidth< 500){
       return mobileScaffold;
     }else if(constrant.maxWidth<1100){
       return tabletScaffold;
     }else{
       return desktopScaffold;
     }
   });
  }

}