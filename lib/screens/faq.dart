import 'package:flutter/material.dart';

class MyData {
  String _title, _body;
  bool _expanded;
  MyData(this._title, this._body, this._expanded);

  @override
  String toString() {
    return 'MyData(_title: $_title, _body: $_body, _expanded: $_expanded)';
  }

  bool get expanded => _expanded;

  set expanded( value) {
    _expanded = value;
  }

  get body => _body;

  set body(value) {
    _body = value;
  }

  String get title => _title;

  set title(value) {
    _title = value;
  }
}

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState([
        MyData(
            "How does Washry work?",
            "It’s very easy, you can order through our android app or website. We pick up your clothes, do them as per requirement (wash/dry clean/iron) and deliver back at your doorstep within the committed time.",
            false),
        MyData(
            "When will I get my clothes back?",
            "Turnaround time for laundry (wash & fold/wash & iron) is 36 Hours - Turnaround time for dry cleaning is 3-4 days (depending upon articles for cleaning)",
            false),
        MyData(
            "How do you accept payment?",
            "We accept cash from our customers to be given to our delivery boy once you have received your clothes. We provide our riders with sufficient amount of change so you need to worry about ‘khulle paise’. Also, you can pay online by clicking the link in the SMS sent to you when the rider is out for delivery. With the release of Washry app now, we plan to create a wallet system for online transactions.",
            false),
        MyData(
            "What if I need my laundry done faster?",
            "You can use our express delivery. In which we will deliver your clothes within 8 hours. Express Delivery charges are according to area.",
            false),
        MyData(
            "What if I can’t be home for my scheduled pick-up or drop off?",
            "You can inform us, we can adjust accordingly. Alternatively, we can drop at an alternate location if needed.",
            false),
        MyData("What do I do if I have a delicate garment that needs cleaned?",
            "You can inform us about that and we will take care of it.", false),
        MyData(
            "What if I am missing an item of clothing from my returned lot?",
            "You can register a complaint with our operations team and we will sort it out on a priority.",
            false),
        MyData(
            "What happens if I leave personal items in my pockets?",
            "Please make sure you empty your pockets before giving us laundry. If we find something, we will make sure it is returned to you.",
            false),
        MyData(
            "Is there a minimum order?",
            "No, there is no minimum order. You can book as on your choice.",
            false),
        MyData(
            "Are you a laundry aggregator?",
            "No, your clothes are laundered by our fully automated machines where we have very experienced washing & ironing professionals.",
            false),
        MyData(
            "Does Washry clean every kind of stain?",
            "We do take care of fabric first. We can clean all washable stains.",
            false),
      ]);
}

class _FaqScreenState extends State<FaqScreen> {
  List<MyData> _list;
  _FaqScreenState(this._list);

  _onExpansion(int index, bool isExpanded) {
    setState(() {
      _list[index]._expanded = !(_list[index].expanded);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanel> myList = [];
    for (int i = 0, ii = _list.length; i < ii; i++) {
      var expansionData = _list[i];
      myList.add(
        ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  expansionData.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            body: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                expansionData.body,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            isExpanded: expansionData._expanded),
      );
    }
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: ExpansionPanelList(
            children: myList,
            expansionCallback: _onExpansion,
          ),
        ),
      ),
    );
  }
}
