import 'package:flutter/material.dart';

class LegalTermsAndConditions extends StatefulWidget {
  @override
  _LegalTermsAndConditionsState createState() => _LegalTermsAndConditionsState();
}

class _LegalTermsAndConditionsState extends State<LegalTermsAndConditions> {
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
      ExpansionTile(
        title: Text('Terms of Use'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
      ),
      ExpansionTile(
        title: Text('Privacy Policy'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
      ),
      ExpansionTile(
        title: Text('Refund Policy'),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
      )
    ],
  );
}