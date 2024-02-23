import 'package:flutter/material.dart';

import 'model.dart';


class test extends StatelessWidget {
  
String text;
  test({required this.text});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(175, 147, 120, 1.0),
        // appBar: AppBar(
        //   title: Text(
        //     'نسيم', style: TextStyle(fontFamily: 'Marhey', fontSize: 35),),
        // ),
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: Container(
      
           decoration: BoxDecoration(
               color: Colors.white,
             borderRadius: BorderRadius.circular(30)
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Directionality(textDirection: TextDirection.rtl,
               child: Padding(
                 padding: const EdgeInsets.all(12),
                 child: Text(text,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18,color: Colors.black,),textDirection:TextDirection.rtl ),
               ))
             ],
           ),
         ),
       ),
      ),
    );
  }
}