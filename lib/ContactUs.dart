import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       // backgroundColor: Color.fromRGBO(175, 147, 120, 1.0),
        // appBar: AppBar(
        //   title: Text(
        //     'نسيم', style: TextStyle(fontFamily: 'Marhey', fontSize: 35),),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Expanded(

              child: SingleChildScrollView(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45,top: 80),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text('enter your feedback :',style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.black,fontSize: 17),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                      child: TextFormField(

                        maxLines: 8,

                        controller: controller,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.black),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(175, 147, 120, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(169, 117, 64, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(25)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(169, 64, 64, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(25)),
                            labelText: "enter your feedback ...",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.black54),

                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    ElevatedButton(
                      onPressed: (){

                      }, child: Text('send', style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Marhey',
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                    ),),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown.shade400,
                        minimumSize: Size(150, 50)
                    ),
                    ),
                    SizedBox(height: 80,),
                    Text('For conect with addminstrator:',style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.black,fontSize: 17),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      IconButton(onPressed: (){}, icon:Icon(Icons.facebook,color: Colors.blue,)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.mail,color: Colors.red,)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.get_app,color: Colors.black,))
                    ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
