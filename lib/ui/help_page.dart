import 'package:flutter/material.dart';

final questions = [
  'Why are my task reminders not getting reported on time?',
  'How do I specify a particular ringtone for all my reminders?',
  'How do I turn on/off vibration mode on my alarm?'
];
final answers = [
  'Sometimes battery optimization applications terminate reminder applications which need to run constantly in the background. Therefore, sometimes your reminders don\'t blow on time. Turn off battery optimization setting of your phone for optimal functioning of the app.',
  'Go to Settings page by clicking on options menu in home page of the app. Then select the ringtone and hit save.',
  'Go to Settings page by clicking on options menu in home page of the app. Then select the Vibration Mode On or Off.'
];

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ\'s'),
        backgroundColor: Colors.indigo.shade700,
      ),
      body: FullHelpPage(),
    );
  }
}

class Items {
  Items({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Items> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Items(
      headerValue: questions[index],
      expandedValue: answers[index],
    );
  });
}

class FullHelpPage extends StatefulWidget {
  @override
  _FullHelpPageState createState() => _FullHelpPageState();
}

class _FullHelpPageState extends State<FullHelpPage> {
  List<Items> _data = generateItems(questions.length);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>(
        (Items items) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListTile(
                  title: Text(
                    items.headerValue,
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 16.0),
              child: ListTile(
                title: Text(
                  items.expandedValue,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 18.0),
                ),
              ),
            ),
            isExpanded: items.isExpanded,
          );
        },
      ).toList(),
    );
  }
}
