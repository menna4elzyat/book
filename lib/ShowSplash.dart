import 'package:flutter/material.dart';
import 'Colors.dart';
import 'splashScreen.dart';

class ShowSplash extends StatefulWidget {
  ShowSplash({super.key});

  @override
  State<ShowSplash> createState() => _ShowSplash();
}

class _ShowSplash extends State<ShowSplash> {

  void initState() {
    Future.delayed(
      Duration(seconds: 3),
     () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>splashScreen()));
     },
    );
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              CircleAvatar(
                radius: 115,
                backgroundColor: Color(0XFF897766),
                child: CircleAvatar(
                  radius: 110,
                  // backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('asset/book_logo.jpg'),
                ),
              ),
              SizedBox(height: 40,),
              Text(
                'Book Gate',
                style:Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: "Pacifico",fontSize: 40),
              ),
              Container(
                child: Row(
                  children: [],
                ),
              ),
              SizedBox(height: 70,),
              CircularProgressIndicator(color: bottom_color),
            ],
          ),
       );
  }
}
