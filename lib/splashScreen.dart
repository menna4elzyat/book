import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Login.dart';
import 'SignIn.dart';
import 'home.dart';

class splashScreen extends StatelessWidget {
  splashScreen({super.key});



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
          SizedBox(
            height: 30,
          ),
          Text(
            'Book Gate',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize:40 ,fontFamily: 'Pacifico'),
          ),
          Container(
            child: Row(
              children: [],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              child: Text('Sign up',
                  style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30)),style: ElevatedButton.styleFrom(backgroundColor: bottom_color),),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text('Login',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30)),style: ElevatedButton.styleFrom(backgroundColor: bottom_color,minimumSize: Size(180, 50)),),
        ],
      ),
    );
  }
}
