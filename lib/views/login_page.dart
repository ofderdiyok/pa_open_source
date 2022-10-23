
import 'package:flutter/material.dart';

import 'package:pool_akademi/constants/consts.dart';
import 'package:pool_akademi/views/homepage.dart';
import 'package:pool_akademi/views/recreatePassword.dart';
import 'package:pool_akademi/views/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: GestureDetector(
              onTap: (){
                FocusScope.of(context).unfocus();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 350,
                      child: Image.asset("assets/images/study.png")),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text(
                      "Hızlı Girişi Kullan!",
                      style: TextStyle(fontSize: kButtonTextSize+2),
                    ),
                  ),

                  SizedBox(
                    height: kButtonTextSize*0.75,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: kUsernameReminder,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),

                  SizedBox(
                    height: kButtonTextSize*0.75,
                  ),

                  TextField(
                    obscureText: true,
                    maxLength: 20,
                    decoration: InputDecoration(
                      hintText: kPasswordReminder,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          "Kaydol",
                          style: TextStyle(fontSize: kButtonTextSize, color: Colors.deepOrange),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange[500],
                        ),
                        onPressed: () {},
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(fontSize: kButtonTextSize,),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: kButtonTextSize*0.75,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReCreatePassword()));
                    },
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(fontSize: kButtonTextSize-4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
