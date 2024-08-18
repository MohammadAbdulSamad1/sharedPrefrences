import 'package:flutter/material.dart';
import 'package:gridview/main.dart';
import 'package:gridview/mainPage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

bool btn1 = false;
bool btn2 = false;
bool btn3 = false;

class _SettingsState extends State<Settings> {
  // bool btn4 = false;
  // bool btn1 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    btn1 = db.read('btn1') ?? false;
    btn2 = db.read('btn1') ?? false;
    btn3 = db.read('btn1') ?? false;
    // btn1 = db.read('btn1') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_sharp,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'change Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Your Prefrences',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Invite Friends',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Invite Friends',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Switch.adaptive(
                      activeTrackColor: Colors.brown.shade700,
                      // activeColor: Colors.green,
                      value: db.read('btn1'),
                      onChanged: (val) {
                        setState(() {
                          btn1 = val;
                        });
                        if (val == true) {
                          db.write('btn1', true);
                        } else {
                          db.write('btn1', false);
                        }
                      }),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Invite Friends',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Switch.adaptive(
                      activeTrackColor: Colors.brown.shade700,
                      // activeColor: Colors.green,
                      value: db.read('btn2'),
                      onChanged: (val) {
                        setState(() {
                          btn2 = val;
                        });
                        if (val == true) {
                          db.write('btn2', true);
                        } else {
                          db.write('btn2', false);
                        }
                      }),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Invite Friends',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: Switch.adaptive(
                      activeTrackColor: Colors.brown.shade700,
                      // activeColor: Colors.green,
                      value: db.read('btn3'),
                      onChanged: (val) {
                        setState(() {
                          btn3 = val;
                        });
                        if (val == true) {
                          db.write('btn3', true);
                        } else {
                          db.write('btn3', false);
                        }
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 3,
                      child: TextButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            db.write('isLogin', false);
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => mainPage()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                size: 30,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('LogOut')
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
