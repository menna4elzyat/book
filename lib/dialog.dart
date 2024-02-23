import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
          appBar: AppBar(
            title: Text("Book Gate",style: TextStyle(
                color: Colors.black,fontSize:20,
                fontWeight: FontWeight.bold
            ),),
            elevation: 5,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(

                backgroundImage: AssetImage(
                  "images/book_logo.jpg",
                ),
                radius: 25,
              ),

              Text("menna elzyat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              SizedBox(height: 7,
              ),
              Text("menna@gmail.con"),
              Text("password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              SizedBox(height: 7,
              ),
              Text("123456789",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              SizedBox(height: 7,
              ),
              SizedBox(height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index)=>Padding(padding:
                  EdgeInsets.only(right: 15,top: 16),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/book_logo.jpg",),
                          radius: 50,
                        ),
                        Text("book"),
                      ],
                    ),
                  ),
                  itemCount: 10,
                ),),


            ],


          ),


    );
  }

}