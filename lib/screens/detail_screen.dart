import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final item;

  DetailScreen(this.item);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Detail")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [

            Text(item['title'], style: TextStyle(fontSize:22)),
            SizedBox(height:10),
            Text(item['body'])

          ],
        ),
      ),
    );
  }
}