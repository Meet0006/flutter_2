import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Meet",
            ),
            accountEmail: Text("meetp0006@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.lightGreen[300],
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1617726341532-11680535062e?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.red),
            title: Text("person"),
            subtitle: Text("your info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.red,
          ),
          ListTile(
            leading: Icon(
              Icons.add_a_photo,
              color: Colors.green,
            ),
            title: Text("Photo"),
            subtitle: Text("ALL Photos"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue[400],
          ),
          ListTile(
            leading: Icon(
              Icons.sports_cricket,
              color: Colors.blue,
            ),
            title: Text("Sports"),
            subtitle: Text("Sport info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue[300],
          ),
          ListTile(
            leading: Icon(
              Icons.airline_seat_flat,
              color: Colors.yellow,
            ),
            title: Text("Sleep"),
            subtitle: Text("info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue[200],
          ),
        ],
      ),
    );
  }
}
