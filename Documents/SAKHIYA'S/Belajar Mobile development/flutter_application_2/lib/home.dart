import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      body: Event(),
    )));
  }
}

class Event extends StatelessWidget {
  List<String> _event = [];

  void _populateEvent() {
    for (int i = 1; i <= 30; i++) {
      _event.add("Event $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    _populateEvent();

    return ListView.builder(
      itemCount: _event.length,
      itemBuilder: (context, index) {
        // create layout item
        return Card(
          margin: EdgeInsets.only(right: 16.0, left: 16.0, top: 12.0),
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Text(_event[index]),
          ),
        );
      },
    );
  }
}
