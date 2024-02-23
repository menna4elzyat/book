
import 'package:book/Colors.dart';
import 'package:book/itemList.dart';
import 'package:flutter/material.dart';


import 'Favourite.dart';
import 'model.dart';


class itemDetail extends StatefulWidget {

  itemDetail({
    required this.book,

  });
  Book book;

  @override
  State<itemDetail> createState() => _itemDetailState();
}

class _itemDetailState extends State<itemDetail> {
  @override
  TextEditingController Controller = TextEditingController();
  bool click =false;
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 70,),
              Card(
                child: Container(
                  width: 180,
                  height: 240,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image(
                    image: AssetImage(
                       widget.book.image.toString()),
                    width: 250,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click = !click ;
                          if(click ==true) {
                            itemList.add({
                              'image': widget.book.image.toString(),
                              'titel': widget.book.titel.toString(),},

                            );
                          }else
                            {

                            }
                          // Favourite(image: widget.book.image.toString(), Titel:  widget.book.titel.toString() ,);
                        });
                      },
                      icon: Icon(
                          click == false ? Icons.favorite_border : Icons.favorite),
                      color: Colors.red,
                    ),
                    SizedBox(width: 40,),
                    Container(
                        width: 90,
                        child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                   widget.book.titel.toString(),
                                    style: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 18,
                                      overflow: TextOverflow.ellipsis,),
                                    maxLines: 2,
                                    textAlign: TextAlign.right,
                                  )),

                            )),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    widget.book.discribtion.toString(),
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 18,
                      overflow: TextOverflow.ellipsis,),
                    maxLines: 5,
                    textAlign: TextAlign.right,
                  )),
              SizedBox(height: 10,),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    widget.book.price.toString()+'    : Price ',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 18,
                      overflow: TextOverflow.ellipsis,),
                    maxLines: 5,
                    textAlign: TextAlign.right,
                  )),
              SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [


                 Container(width: 130,
                   height: 70,
                   child: TextFormField(
                     controller: Controller,
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                         labelText: 'amount:',
                         labelStyle: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 13,
                          ),
                         enabledBorder:OutlineInputBorder(

                             borderRadius: BorderRadius.circular(25),
                             borderSide: BorderSide(color: Colors.brown)

                         )

                     ),
                   ),
                 ),
                 SizedBox(width: 30,),
                 Directionality(
                   textDirection: TextDirection.rtl,
                   child: Text('amount :',   style:Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 18,
                     ),),
                 ),

               ],
             ),
              Padding(
                padding: const EdgeInsets.only(right: 75,
                top: 20),
                child: ElevatedButton(
                  onPressed: (){
                  showDialog(context: context, builder: (context)=>AlertDialog(
                    actions: [
                      SizedBox(height: 10,),
                      Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(175, 147, 120, 1.0),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              CircleAvatar(backgroundImage: AssetImage( widget.book.image.toString()),radius: 50,),
                              SizedBox(height: 10,),
                              Text('amount is: ${Controller.text}', style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Marhey',
                                fontSize: 14,
                                overflow: TextOverflow.ellipsis,
                              ),),
                              SizedBox(height: 10,),
                              Text('information of book is:', style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Marhey',
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis,
                              ),),
                              SizedBox(height: 10,),
                              Text('name${ widget.book.titel.toString()}:', style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Marhey',
                                fontSize: 13,
                                overflow: TextOverflow.ellipsis,
                              ),),
                              SizedBox(height: 10,),
                              Text('priec${ widget.book.price.toString()}:', style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Marhey',
                                fontSize: 13,
                                overflow: TextOverflow.ellipsis,
                              ),),
                            SizedBox(height: 20,),
                            Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      itemListadd.add({
                                        'image': widget.book.image.toString(),
                                        'titel': widget.book.titel.toString(),},);

                                    }, child: Text('ok', style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Marhey',
                                    fontSize: 15,
                                    overflow: TextOverflow.ellipsis,
                                  ),),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown.shade400,
                                      minimumSize: Size(70, 40)
                                  ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ElevatedButton(
                                    onPressed: (){

                                    }, child: Text('Exit', style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Marhey',
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                  ),),style: ElevatedButton.styleFrom(backgroundColor:bottom_color,
                                      minimumSize: Size(70, 40)
                                  ),
                                  ),
                                ),
                              ],
                            ),
                            ],
                          ),
                        ),

                    ],
                  ));
                }, child: Text('Buy',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 18,
                   color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.brown.shade400,
                           minimumSize: Size(180, 50)
                ),
                ),
              )
            ],
          ),
        ),
      ),

    );


  }
}
