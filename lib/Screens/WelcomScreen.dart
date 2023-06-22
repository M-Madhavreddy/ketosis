import 'package:flutter/material.dart';

import 'FormScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ketosis'),
        actions: [
          IconButton(
            onPressed:() {Navigator.of(context).pushNamed('/FormScreen');},
            icon: const Icon(Icons.add_a_photo_outlined),
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: const Color.fromRGBO(33, 33, 33, 87),
          // width: 350,//double.infinity,
          // height: 250,
          child:  Center(
            child: Container(
              color: Colors.white,
               height: 250,
              child: Card(color: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Disclaimer message to be written here"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
