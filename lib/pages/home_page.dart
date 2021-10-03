import 'package:flutter/material.dart';
import 'package:flutter_app2/drawer.dart';
//import 'package:flutter_app2/change_NameCard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//import 'Uri' as 'dart:core';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Card(),
          ),
        ),

        // ignore: dead_code

        drawer: MyDrawer(),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getDataApi();
          },
          child: Icon(Icons.refresh),
        ));
  }
}

void getDataApi() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/albums/1/photos");

  http.Response respons = await http.get(url);
  print(respons.statusCode);
  if (respons.statusCode == 200) {
    print("success");
    final data = jsonDecode(respons.body);
final title = data[0]['title']['thumbnailsUrl'];
print(title);
  } else {
    print("unsuccess");
  }
}
