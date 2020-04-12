import 'package:flutter/material.dart';

class ContactsUs extends StatefulWidget {
  @override
  _ContactsUsState createState() => _ContactsUsState();
}

class _ContactsUsState extends State<ContactsUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/call-center-customer.png',width: 200,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We're Happy to Help You!",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Text(
                'If you have any complain about any of orders contacts us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .4,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Call Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .4,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "E-mail Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
