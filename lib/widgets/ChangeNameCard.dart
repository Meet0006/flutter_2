import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        // width: 150,

        SizedBox(
          height: 30,
        ),
        Text(
          myText,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            // obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "enter here",
              labelText: "Name",
            ),
          ),
        )
      ],
    );
  }
}