import 'package:flutter/material.dart';
import 'package:unda/views/widgets/sidemenu_item.dart';

import 'widgets/service.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1F1F),
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: <Widget>[Icon(Icons.search)],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            //Right column
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: <Widget>[
                  //Profile image
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/avatar.png'),
                        radius: 35,
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Ambrose Kyusya',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Madaraka',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  //Sidemenu
                  Container(
                    height: 3,
                    color: Color(0xff22222a),
                  ),
                  SideMenuItem(
                    color: Colors.white,
                    //  containerColor: Color(0xff22222a),
                    text: 'Home',
                    iconData: Icons.home,
                  ),
                  // Container(height: 3, color: Color(0xff22222a),),

                  SideMenuItem(
                    color: Colors.yellow,
                    containerColor: Color(0xff22222a),
                    text: 'Profile',
                    iconData: Icons.person,
                  ),
                  // Container(height: 3, width: 100, color: Color(0xff22222a),),
                  SideMenuItem(
                    color: Colors.white,
                    // containerColor: Color(0xff22222a),
                    text: 'Orders',
                    iconData: Icons.shopping_cart,
                  ),
                  Container(
                    height: 3,
                    //  width: 100,
                    color: Color(0xff22222a),
                  ),

                  SideMenuItem(
                    color: Colors.white,
                    // containerColor: Color(0xff22222a),
                    text: 'Messages',
                    iconData: Icons.chat_bubble,
                  ),
                  Container(
                    height: 3,
                    // width: 100,
                    color: Color(0xff22222a),
                  ),

                  SideMenuItem(
                    color: Colors.white,
                    // containerColor: Color(0xff22222a),
                    text: 'Settings',
                    iconData: Icons.settings,
                  ),
                  Container(
                    height: 3,
                    // width: 100,
                    color: Color(0xff22222a),
                  ),

                  SideMenuItem(
                    color: Colors.white,
                    //  containerColor: Color(0xff22222a),
                    text: 'Log Out',
                    iconData: Icons.all_out,
                  ),
                  Container(
                    height: 3,
                    //width: 100,
                    color: Color(0xff22222a),
                  ),
                ],
              ),
            ),
          ),
          //vertical line. Left line
          Container(
            width: 3,
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xff22222a),
          type: BottomNavigationBarType.fixed,
          onTap: _onItemSelect(_selectedIndex),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.airline_seat_legroom_normal), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                label: 'Settings'),
          ]),
    );
  }

  _onItemSelect(int itemSelected) {
    setState(() {
      itemSelected = _selectedIndex;
    });

    switch (itemSelected) {
      case 0:
        //open profile page

        break;

      case 1:
        //open respective page
        break;

      case 1:
        //open respective page
        break;
      case 2:
        //open respective page
        break;
      default:
    }
  }
}
