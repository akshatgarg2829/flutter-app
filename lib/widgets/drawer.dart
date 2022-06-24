import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 88, 95, 223),
        child: ListView(padding: EdgeInsets.zero, children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 213, 215, 229)),
              accountName: Text(
                "Akshat Garg",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "akshatgarg2829@gmail.com",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.statusqueen.com/dpimages/thumbnail/cute_beautiful_dp-927.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.white,
            ),
            title: Text("Email", style: TextStyle(color: Colors.white)),
          ),
        ]),
      ),
    );
  }
}
