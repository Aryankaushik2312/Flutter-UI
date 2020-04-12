import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    offset: Offset(0, 6.0),
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
          
          Container(
            height: MediaQuery.of(context).size.height *.3,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ProfileBodyLayout(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myProfileScreenListView(context);
  }
}

Widget _myProfileScreenListView(BuildContext context) {

  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.assignment,
          color: Colors.blue,
        ),
        title: Text('Name'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          (Icons.contact_mail),
          color: Colors.blue,
        ),
        title: Text('E-mail'),
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
          (Icons.call),
          color: Colors.blue,
        ),
        title: Text('Phone Number'),
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
          (Icons.date_range),
          color: Colors.blue,
        ),
        title: Text('D.O.B'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1996),
            lastDate: DateTime(1996),
          );
        },
      ),
    ],
  );
}
