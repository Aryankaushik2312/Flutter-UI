import 'package:basic_screens/screens/contact_us.dart';
import 'package:basic_screens/screens/legal.dart';
import 'package:basic_screens/screens/profile.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(0, 4.0),
                            color: Colors.black38),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/modern-call-center.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Aryan Kaushik",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "+91 8079013893",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      // SmallButton(btnText: "Edit"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: AccountScreenLayout(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myAccountScreenListView(context);
  }
}

Widget _myAccountScreenListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        title: Text('Profile Settings'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.location_on),
          color: Colors.blue,
        ),
        title: Text('My Addresses'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          print('Star');
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.local_mall),
          color: Colors.blue,
        ),
        title: Text('My Orders'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          print('Moon');
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.attach_money),
          color: Colors.blue,
        ),
        title: Text('Payments'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          print('Star');
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.assignment),
          color: Colors.blue,
        ),
        title: Text('Legal'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Legal()),
          );
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.mail_outline),
          color: Colors.blue,
        ),
        title: Text('Contacts'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactsUs()),
          );
        },
      ),
      ListTile(
        leading: Icon(
          (Icons.launch),
          color: Colors.blue,
        ),
        title: Text('Logout'),
        trailing: Icon(
          Icons.power_settings_new,
          color: Colors.blue,
        ),
        onTap: () {
          print('Star');
        },
      ),
    ],
  );
}
