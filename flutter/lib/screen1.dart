import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,index){
        return Card(
          borderOnForeground: true,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,              
            ),
            title: Text('Name ${index+1}'),
            subtitle: Text("Description"),
          ),
        );
      },
      
    );
  }
}