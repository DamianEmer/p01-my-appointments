import 'package:flutter/material.dart';

AppBar appBar(){
  return AppBar(
    leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigator Menu',
            onPressed: null,
          ),
          title: Text('Appointments'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            )
          ]
  );
}