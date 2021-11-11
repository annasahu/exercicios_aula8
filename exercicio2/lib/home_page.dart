import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Render'),
      ),
      body: Container(
        height: 150,
        width: 100,
        color: Colors.purple,
        child: Align( //"Center" OU "Align"
        /*No uso do "Center" ao invés do "Align", essa linha deve ser comentada*/
        alignment: Alignment.center,
        child: Container(
          height: 100,
          width: 50,
          color: Colors.orange,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
          ],
        ),
          ),
        ),
       ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
