import 'package:book/test.dart';
import 'package:flutter/material.dart';

import 'BookListView.dart';
import 'Colors.dart';
import 'model.dart';

class Grid extends StatefulWidget {
  Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  int i = 0;
  List<Catagory> listBook = GridList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        itemCount: listBook.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
                // color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('${listBook[index].photo}'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                // Positioned(
                //   right: 0,
                //   left: 0,
                //   top: 20,
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('${listBook[index].photo}'),
                //     radius: 70,
                //   ),
                // ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                          '${listBook[index].name}',
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 25,color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7, bottom: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              index;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookListView(
                                          bookGrid: listBook[index],
                                          i: index,
                                          lenghtOfList:
                                              listBook[index].bookGrid.length,
                                        )));
                          },
                          child: Text(
                            'view',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: bottom_color,
                              minimumSize: Size(100, 40)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
