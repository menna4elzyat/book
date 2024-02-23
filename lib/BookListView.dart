import 'package:book/Colors.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'item.dart';
import 'model.dart';

class BookListView extends StatefulWidget {
  int i;

  Catagory bookGrid;
  int lenghtOfList;

  BookListView(
      {required this.bookGrid, required this.i, required this.lenghtOfList});

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
 List<bool> click =[false];
  var Controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text(
      //     'نسيم', style: TextStyle(fontFamily: 'Marhey', fontSize: 35),),
      // ),
      appBar:AppBar(

        title: Text(
          'BookGate',),
      ),
      drawer:  Drawer(
        backgroundColor: LightColorBack,
        child: ListView(
          children: [
            DrawerHeader(child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('asset/maha.jpg'),radius: 45,),
              title: Text('settings',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Icon(Icons.settings,color: LightColorfor,),
            )),
            ListTile(
              leading: Icon(Icons.nightlight,color: LightColorfor,),
              title: Text('darkmode',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Dark(),
            ),
            ListTile(
              leading: Icon(Icons.add_card,color: LightColorfor,),
              title: Text('Card',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Icon(Icons.mobile_friendly,color: LightColorfor,),
            ),
            ListTile(
              leading: Icon(Icons.email_outlined,color: LightColorfor,),
              title: Text('edit adrass',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Icon(Icons.edit,color: LightColorfor,),
            ),
            ListTile(
              leading: Icon(Icons.question_mark,color: LightColorfor,),
              title: Text('Ask',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Icon(Icons.arrow_right,color: LightColorfor,),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded,color: LightColorfor,),
              title: Text('account',style:
              TextStyle(fontFamily: 'Marhey',color: LightColorfor),),
              trailing: Icon(Icons.arrow_right,color: LightColorfor,),
            ),
          ],
        ),

      ),
      body: GridView.builder(
        key: UniqueKey(),
        controller: Controller,

        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Column(
          children: [
            InkWell(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>itemDetail(book:  widget.bookGrid.bookGrid[index],)));
              },
              child: Card(
                child: Container(
                  width: 100,
                  height: 120,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image(
                    image: AssetImage(
                        widget.bookGrid.bookGrid[index].image.toString()),
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       click[index]= !click[index];
                  //     });
                  //   },
                  //   icon: Icon(
                  //       click[index] == false ? Icons.favorite_border : Icons.favorite),
                  //   color: Colors.red,
                  // ),
                  Container(
                      width: 90,
                      child: Center(
                          child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                widget.bookGrid.bookGrid[index].titel.toString(),
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                              )))),

                ],
              ),
            ),
          ],
        ),
        itemCount: widget.bookGrid.bookGrid.length,
      ),
    );
  }
}
