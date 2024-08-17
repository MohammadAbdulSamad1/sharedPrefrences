import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:gridview/SignUp.dart';
import 'package:gridview/signInPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 207, 62, 52),
            Color.fromARGB(255, 50, 11, 9)
          ]),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            (FaIcon(
              FontAwesomeIcons.dumbbell,
              size: 50,
              color: Colors.white,
            )),
            ////////
            Text(
              'FITNESS CLUB',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              child: Container(
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    // color: Color.fromARGB(255, 122, 28, 21),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Container(
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Login with Social Media',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: (FaIcon(FontAwesomeIcons.instagram)))),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: (FaIcon(FontAwesomeIcons.twitter)))),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: (FaIcon(FontAwesomeIcons.facebookF)))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
