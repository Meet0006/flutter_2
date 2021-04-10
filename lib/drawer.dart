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
            accountName: Text("Meet"),
            accountEmail: Text("meetp0006@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1617726341532-11680535062e?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("person"),
            subtitle: Text("your info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text("Photo"),
            subtitle: Text("ALL Photos"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.sports_cricket),
            title: Text("Sports"),
            subtitle: Text("Sport info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.airline_seat_flat),
            title: Text("Sleep"),
            subtitle: Text("info"),
            trailing: Icon(Icons.edit),
            hoverColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
