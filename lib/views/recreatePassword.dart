import 'package:flutter/material.dart';

class ReCreatePassword extends StatefulWidget {
  const ReCreatePassword({Key? key}) : super(key: key);

  @override
  State<ReCreatePassword> createState() => _ReCreatePasswordState();
}

class _ReCreatePasswordState extends State<ReCreatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text("şifremi unuttum"),
        ),
      ),
    );
  }
}
