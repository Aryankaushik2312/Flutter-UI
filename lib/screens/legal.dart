import 'package:basic_screens/screens/faq.dart';
import 'package:basic_screens/screens/legal_tnc.dart';
import 'package:flutter/material.dart';

class Legal extends StatefulWidget {
  @override
  _LegalState createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legal"),
      ),
      body: LegalBodyLayout(),
    );
  }
}

class LegalBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myLegalScreenListView(context);
  }
}

Widget _myLegalScreenListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('General Issues'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      ),
      ListTile(
        title: Text('Legal, Terms & Conditions'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LegalTermsAndConditions()),
          );
        },
      ),
      ListTile(
        title: Text("FAQ's"),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FaqScreen()),
          );
        },
      ),
      ListTile(
        title: Text('About'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          print('Star');
        },
      ),
    ],
  );
}
