import 'package:flutter/material.dart';
import 'package:gridview/main.dart';
import 'package:gridview/mainPage.dart';
import 'package:gridview/settings.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 115, 40, 12),
                  fontWeight: FontWeight.w500),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(elevation: WidgetStatePropertyAll(10)),
              onPressed: () {
                db.write('isLogin', false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => mainPage()));
              },
              child: Text('LogOut'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Settings()));
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}
