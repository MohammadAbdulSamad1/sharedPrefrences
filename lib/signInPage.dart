import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gridview/SignUp.dart';
import 'package:gridview/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

final db = GetStorage();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
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
                  height: 40.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello\nSign in!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.sp,
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
                  height: 40.h,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: 400.w,
                height: 550.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gmail',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 103, 22, 8),
                                fontWeight: FontWeight.w500),
                          ),
                          TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check),
                              // labelText: 'GMAIL',
                              hintText: 'you@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              // border: OutlineInputBorder(
                              //     borderSide: BorderSide(),
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(10.r))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
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
                              suffixIcon: Icon(Icons.remove_red_eye),
                              // labelText: 'Password',
                              hintText: '*******',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              // border: OutlineInputBorder(
                              //     borderSide: BorderSide(),
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(10.r))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () async {
                          // final prefs = await SharedPreferences.getInstance();
                          // String mail =
                          //     prefs.getString('gmail') ?? 'email not found';
                          // String pass =
                          //     prefs.getString('pass') ?? ' pass not found';
                          // print(mail);
                          // print(pass);
                          // if (mail == email.text.toString() &&
                          //     pass == password.text.toString()) {
                          //   Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Welcome()));
                          //   email.clear();
                          //   password.clear();
                          // } else {
                          //   print('wrong data');
                          // }
                          String mail = db.read('email');
                          String pass = db.read('pass');
                          if (email.text == mail && password.text == pass) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Welcome()));
                            db.write('isLogin', true);
                          }
                        },
                        child: Container(
                          width: 360.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                const Color.fromARGB(255, 207, 62, 52),
                                const Color.fromARGB(255, 50, 11, 9)
                              ]),
                              // color: Color.fromARGB(255, 122, 28, 21),
                              borderRadius: BorderRadius.circular(100.r)),
                          child: Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Don't have account?"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
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
