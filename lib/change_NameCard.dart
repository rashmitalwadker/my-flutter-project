import 'package:flutter/material.Dart';
import 'package:flutter/material.dart';

class ChangeCardName extends StatelessWidget {
  const ChangeCardName({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/1.jpg',
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16.0),
        Text(myText,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "enter ur name",
              labelText: "name",
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
    //
  }
}
