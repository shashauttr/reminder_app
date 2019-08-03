import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Colors.indigo.shade700,
      ),
      body: SafeArea(
        child: FeedbackPageBody(),
      ),
    );
  }
}

class FeedbackPageBody extends StatefulWidget {
  @override
  _FeedbackPageBodyState createState() => _FeedbackPageBodyState();
}

class _FeedbackPageBodyState extends State<FeedbackPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 5,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Noticed a bug or have a suggestion?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Please let us know.We value your feedback greatly and where possible will look to use it to improve.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                        child: Text(
                          'Help us make this app even better.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //SizedBox(height: 150.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              textAlign: TextAlign.justify,
              maxLines: 20,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo)),
                contentPadding:
                    const EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20.0),
                hintText: 'Your message goes here',
                labelText: 'Feedback',
                hintStyle: TextStyle(color: Colors.indigo, fontSize: 18.0),
                labelStyle: TextStyle(color: Colors.indigo, fontSize: 18.0),
              ),
              keyboardType: TextInputType.multiline,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
          child: FloatingActionButton(
              child: Icon(Icons.send),
              elevation: 5,
              backgroundColor: Colors.teal[500],
              onPressed: () {}),
        ),
      ],
    );
  }
}
