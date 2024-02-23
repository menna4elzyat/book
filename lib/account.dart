import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';
import 'itemList.dart';

class Dark extends StatefulWidget {
  Dark({super.key});

  @override
  State<Dark> createState() => _DarkState();
}

class _DarkState extends State<Dark> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 15),
               child: Align(
                 alignment: AlignmentDirectional.topCenter,
                 child: CircleAvatar(

                    backgroundImage: AssetImage(
                      "asset/اسيا.jpg",
                    ),
                    radius: 45,
                  ),
               ),
             ),
              SizedBox(height:20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('username is :'+username.text,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),),
              ),
              SizedBox(height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Email is : '+emailController1.text,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('password is : '+passwordController1.text,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),),
              ),
              SizedBox(height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('phone is : '+phonenumber.text,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),),
              ),
              SizedBox(height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text('your list books',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 23,color: Color.fromARGB(
                    255, 224, 189, 150)),),
              ),
                 ListView.builder(
                   shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index)=>ListTile(
                   leading: CircleAvatar(
                     backgroundImage:  AssetImage(itemListadd[index+1]['image'],),
                   ),
                    title: Text(itemListadd[index+1]['titel'],style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18),),
                  ),
                  itemCount: itemListadd.length-1,
                ),


            ],


          ),
        ),
      ),
    );
  }
}
