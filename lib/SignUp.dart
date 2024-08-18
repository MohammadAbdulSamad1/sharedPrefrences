import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gridview/signInPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

final db = GetStorage();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController Cpassword = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 207, 62, 52),
            Color.fromARGB(255, 50, 11, 9)
          ]),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Your\nAccount',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                        size: 35,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: 400,
                height: 585,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full Name',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 103, 22, 8),
                                fontWeight: FontWeight.w500),
                          ),
                          TextField(
                            controller: name,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // labelText: 'Full Name',
                              hintText: 'AbdulSamad',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gmail Or Phone',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 103, 22, 8),
                                fontWeight: FontWeight.w500),
                          ),
                          TextField(
                            controller: email,
                            // keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // labelText: 'Phone or Gmail',
                              hintText: 'you@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 103, 22, 8),
                                fontWeight: FontWeight.w500),
                          ),
                          TextField(
                            controller: password,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // labelText: 'Password',
                              hintText: '*********',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm Password',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 103, 22, 8),
                                fontWeight: FontWeight.w500),
                          ),
                          TextField(
                            controller: Cpassword,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // labelText: 'Password',
                              hintText: '*********',
                              hintStyle: TextStyle(color: Colors.grey),
                              // border: OutlineInputBorder(
                              //     borderSide: BorderSide(),
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async {
                        // final pref = await SharedPreferences.getInstance();
                        // await pref.setString('name', name.text.toString());
                        // await pref.setString('gmail', email.text.toString());
                        // await pref.setString('pass', password.text.toString());
                        // await pref.setString(
                        //     'Cpass', Cpassword.text.toString());
                        // name.clear();
                        // email.clear();
                        // password.clear();
                        // Cpassword.clear();
                        db.write('email', email.text);
                        db.write('pass', password.text);
                        db.write('name', name.text);
                        db.write('Cpass', Cpassword.text);
                        name.clear();
                        email.clear();
                        password.clear();
                        Cpassword.clear();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              const Color.fromARGB(255, 207, 62, 52),
                              const Color.fromARGB(255, 50, 11, 9)
                            ]),
                            // color: Color.fromARGB(255, 122, 28, 21),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 27),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Don't have account?"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
