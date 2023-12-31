import 'package:flutter/material.dart';
import 'package:login/modules/signup/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height:50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('images/logo.png')),
                  SizedBox(width: 10,),

                  Text(
                    'Maintenance',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142)),
                  ),

                ],
              ),
              Center(
                  child: Text(
                    'login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff2D3142)),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                    'Reference site about Lorem Ipsum, \ngiving information on its origins, \n as well as a random Lipsum generator.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xff4C5980)),
                  )),

              SizedBox(height: 30),


              Row(children: [
                Text("Don't have an account ?",style: TextStyle(fontSize: 14),)
                ,
                SizedBox(width: 30),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupPage()));
                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("Signup",style: TextStyle(color: Colors.white),))
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
