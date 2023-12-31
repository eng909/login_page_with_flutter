
import 'package:flutter/material.dart';
import 'package:login/modules/home/home_page.dart';
import 'package:login/modules/login/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold( body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Center(child: Text("Signup Page",style: TextStyle(fontSize: 20),)),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(hintText: "Enter Your Email ID",
            labelText: "Your Email Id"
            ),

          ),
          SizedBox(height: 10),

          TextField(
          decoration: InputDecoration(hintText: "Enter Your Password",
              labelText: "Your Password"
          ),

        ),
            SizedBox(height: 30),

            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute (
                builder: (BuildContext context) => const  HomePage(),
              ), );
            }, child: Text("Submit",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          ),

            SizedBox(height: 30),
            
            Row(children: [
              Text("Already have an account ?",style: TextStyle(fontSize: 14),)
              ,
              SizedBox(width: 30),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
              },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("Login",style: TextStyle(color: Colors.white),))
            ],)


          ],),
        
   

      ),
      
      ),
    );
  }
}
