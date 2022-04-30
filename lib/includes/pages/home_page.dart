// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/includes/pages/plus.dart';
import 'package:test_app/includes/variables/variables.dart';

class Home_page extends StatelessWidget{
    const Home_page({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        //backgroundColor: Color(0x00926FE8), mon naviguateur ne prend pas en compte la couleur 
        backgroundColor: Color.fromARGB(255, 41, 7, 136),
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){

            }, 
            icon: user_logo),
          title: Center(
            child: Text(title_home_page),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
               icon: settings_btn),
            IconButton(
              onPressed: (){},
              icon: help_,
            ),
          ],
          backgroundColor: transparent_,
          elevation: 0.0, ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
              CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/test.jpg'),
              ),
              SizedBox(height:  10.0,),
              Card(
                color: transparent_,
                child: Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Text(
                    author_,
                    style: TextStyle(
                    fontFamily: 'Lobster',
                      height: 1.5,
                      fontSize: 30.0,
                      color: blanc_,
                    ),
                  ),
                ),
              ),
              
              Card(

                margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                color: transparent_,
                child: Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Text(
                    competence_,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontFamily: 'Lobster',
                      height: 1.5,
                      fontSize: 20.0,
                      color: blanc_,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
 
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context){
                        return plus();
                      }
                    )
                  );
                },
                child: Text("En savoir plus",),
                style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                textStyle: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Lobster',
                  fontSize: 20,
                  height: 1.5),
                ),
              ),
           ]),
          )
        ),
      );
    }
}