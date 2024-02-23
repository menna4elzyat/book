import 'package:book/Colors.dart';
import 'package:book/itemList.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
   Favourite({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>  Dismissible(
          onDismissed: (_){
            itemList.removeAt(index);
          },
          key: UniqueKey(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(itemList[index+1]['image']),radius: 45,),
              title: Text(itemList[index+1]['titel'], style: Theme.of(context).textTheme.bodyText1?.copyWith(  fontSize: 16,
                overflow: TextOverflow.ellipsis,),),
              trailing: Icon(Icons.favorite,color: Colors.red,),
            ),
          ),
        ),
       itemCount: itemList.length-1,
      ),
    );
  }
}
