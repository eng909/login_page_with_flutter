import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page",style: TextStyle(color: Colors.white),)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(

            onTap: (){
              Navigator.pop(context);
            },
              child: Center(child:


                Text("Click to back "),)),

        ],
      ),
    );
  }








}
