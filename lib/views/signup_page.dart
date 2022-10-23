
import 'package:flutter/material.dart';

import 'package:pool_akademi/constants/consts.dart';
import 'package:pool_akademi/views/homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text("Hemen $kAppName'ye Katıl!", textAlign: TextAlign.center, style: TextStyle( fontSize: kButtonTextSize*1.6,),),
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: kEmailReminder,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: kUsernameReminder,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: kBirthdateReminder,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.date_range),
                  ),
                  keyboardType: TextInputType.datetime,
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

                TextField(
                  obscureText: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                    hintText: kPasswordReminder,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange[500],
                  ),
                  onPressed: () {},
                  child: Text(
                    "Kaydol",
                    style: TextStyle(fontSize: kButtonTextSize,),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Hızlı Girişi Kullan!",
                    style: TextStyle(fontSize: kButtonTextSize-2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
