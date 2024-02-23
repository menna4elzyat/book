import 'package:book/ContactUs.dart';
import 'package:book/story.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';
import 'account.dart';
import 'Favourite.dart';
import 'HomeList.dart';
import 'Contact.dart';
import 'bottomDark.dart';
import 'model.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Catagory> listBook = GridList();

  int current = 0;

  var screens = [Grid(), story(), Favourite(), ContactUs(),Dark()];
  var appbar = [
    AppBar(
      // backgroundColor: LightColorBack,
      elevation: 5,
      title: Text(
        "BookGate",
      ),

    ),
    AppBar(
      // backgroundColor: LightColorBack,
      title: Text(
        'نسيم',
      ),
    ),
    AppBar(
      // backgroundColor: LightColorBack,
      elevation: 5,
      title: Text("BookGate"),
    ),
    AppBar(
      // backgroundColor: LightColorBack,
      elevation: 5,
      title: Text(
        "BookGate",
      ),
    ),
    AppBar(
      // backgroundColor: LightColorBack,
      elevation: 5,
      title: Text(
        "BookGate",
      ),
    ),
  ];
  var draw = [ Drawer(
    child: ListView(
      children: [
        DrawerHeader(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/maha.jpg'),
                radius: 45,
              ),
              title: Text(
                'settings',

              ),
              trailing: Icon(
                Icons.settings,

              ),
            )),
        ListTile(
          leading: Icon(
            Icons.nightlight,

          ),
          title: Text(
            'darkmode',

          ),
          trailing:  IconButton(onPressed: () {
            changeMode();
            mode =! mode;
          }, icon: Icon(Icons.swap_horiz)),
        ),
        ListTile(
          leading: Icon(
            Icons.add_card,

          ),
          title: Text(
            'Card',

          ),
          trailing: Icon(
            Icons.mobile_friendly,

          ),
        ),
        ListTile(
          leading: Icon(
            Icons.email_outlined,

          ),
          title: Text(
            'edit adrass',

          ),
          trailing: Icon(
            Icons.edit,

          ),
        ),
        ListTile(
          leading: Icon(
            Icons.question_mark,

          ),
          title: Text(
            'Ask',

          ),
          trailing: Icon(
            Icons.arrow_right,

          ),
        ),

      ],
    ),
  ),
    Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('asset/maha.jpg'),
              radius: 45,
            ),
            title: Text(
              'settings',

            ),
            trailing: Icon(
              Icons.settings,

            ),
          )),
          ListTile(
            leading: Icon(
              Icons.nightlight,

            ),
            title: Text(
              'darkmode',

            ),
            trailing:  IconButton(onPressed: () {
              changeMode();
              mode =! mode;
            }, icon: Icon(Icons.swap_horiz)),
          ),
          ListTile(
            leading: Icon(
              Icons.add_card,

            ),
            title: Text(
              'Card',

            ),
            trailing: Icon(
              Icons.mobile_friendly,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,

            ),
            title: Text(
              'edit adrass',

            ),
            trailing: Icon(
              Icons.edit,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,

            ),
            title: Text(
              'Ask',

            ),
            trailing: Icon(
              Icons.arrow_right,

            ),
          ),

        ],
      ),
    ),
    null,
    Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/maha.jpg'),
                  radius: 45,
                ),
                title: Text(
                  'settings',

                ),
                trailing: Icon(
                  Icons.settings,

                ),
              )),
          ListTile(
            leading: Icon(
              Icons.nightlight,

            ),
            title: Text(
              'darkmode',

            ),
            trailing:  IconButton(onPressed: () {
              changeMode();
              mode =! mode;
            }, icon: Icon(Icons.swap_horiz)),
          ),
          ListTile(
            leading: Icon(
              Icons.add_card,

            ),
            title: Text(
              'Card',

            ),
            trailing: Icon(
              Icons.mobile_friendly,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,

            ),
            title: Text(
              'edit adrass',

            ),
            trailing: Icon(
              Icons.edit,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,

            ),
            title: Text(
              'Ask',

            ),
            trailing: Icon(
              Icons.arrow_right,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_rounded,

            ),
            title: Text(
              'account',

            ),
            trailing: Icon(
              Icons.arrow_right,

            ),
          ),
        ],
      ),
    ),
    Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/maha.jpg'),
                  radius: 45,
                ),
                title: Text(
                  'settings',

                ),
                trailing: Icon(
                  Icons.settings,

                ),
              )),
          ListTile(
            leading: Icon(
              Icons.nightlight,

            ),
            title: Text(
              'darkmode',

            ),
            trailing:  IconButton(onPressed: () {
              changeMode();
              mode =! mode;
            }, icon: Icon(Icons.swap_horiz)),
          ),
          ListTile(
            leading: Icon(
              Icons.add_card,

            ),
            title: Text(
              'Card',

            ),
            trailing: Icon(
              Icons.mobile_friendly,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,

            ),
            title: Text(
              'edit adrass',

            ),
            trailing: Icon(
              Icons.edit,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,

            ),
            title: Text(
              'Ask',

            ),
            trailing: Icon(
              Icons.arrow_right,

            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_rounded,

            ),
            title: Text(
              'account',

            ),
            trailing: Icon(
              Icons.arrow_right,

            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar[current],
      drawer: draw[current],
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedLabelStyle:
              TextStyle(fontFamily: 'Marhey', color: LightColorfor),
          selectedLabelStyle:
              TextStyle(fontFamily: 'Marhey', color: LightColorfor),
          type: BottomNavigationBarType.fixed,
          currentIndex: current,

          onTap: (index) {
            setState(() {
              current = index;
            });
          },
          items:  [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
               ),
            BottomNavigationBarItem(
              label: 'storys',
              icon: Icon(Icons.book_outlined),
            ),
            BottomNavigationBarItem(
              label: 'favorite',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'contact us',
              icon: Icon(Icons.phone),

            ),
            BottomNavigationBarItem(
              label: 'account',
              icon: Icon(Icons.account_circle),

            ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   label: 'settings',
            // ),
          ]),
    );
  }
}
