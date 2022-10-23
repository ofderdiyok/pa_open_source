import 'package:flutter/material.dart';
import 'package:pool_akademi/constants/consts.dart';
import 'package:pool_akademi/views/personal_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoşgeldin Faruk!"),
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PersonalPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/pa_siyah.png"),
              SizedBox(
                height: kButtonTextSize * 0.75,
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: Container(
                      child: Column(
                    children: [
                      Text(
                        "Kalkülüs 1 Dersine Devam Edin:",
                        style: TextStyle(fontSize: kButtonTextSize),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            "assets/images/math_1.jpg",
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
