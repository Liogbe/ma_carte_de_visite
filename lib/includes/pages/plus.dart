// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/includes/variables/variables.dart';

class plus extends StatelessWidget {
  const plus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 7, 136),
      appBar: AppBar(
        title: Text(title_plus),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
         child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget> [
              CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/test.jpg'),
            ),
            SizedBox(height: 20.0,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("A la recherche de la connaissance et d'une vie plaisible, j'ai opté pour le réseau informatique malgré le fait que j'aimais la programmation.\n\nDu coup je programme durant mes heures libres...",
                style:
                  TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    fontSize: 20.0,
                  )
                ),
              ),
            color: Colors.transparent,
            ),
            ]
            
          )
      )
    ));
  }
}