import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hearingappv2/test.dart';
import 'package:hearingappv2/home_page.dart';
import 'test.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Results'),
    ),
    body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
                'Here are your results',
                    style:TextStyle(fontSize:50.0)
            ),
        ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'The minimum volume for 250 hertz was ' + returnResults(250).toString(),
                style:TextStyle(fontSize:20.0)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'The minimum volume for 500 hertz was ' + returnResults(500).toString(),
                style:TextStyle(fontSize:20.0)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'The minimum volume for 1000 hertz was ' + returnResults(1000).toString(),
                style:TextStyle(fontSize:20.0)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'The minimum volume for 250 hertz was ' + returnResults(2000).toString(),
                style:TextStyle(fontSize:20.0)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                analyze(),
                style:TextStyle(fontSize:30.0)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: ElevatedButton(
              child: Text('Return to Home'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBapp()),
                );
              },
            ),

          ),
    ],
        ),
    );
  }
}

String analyze(){
  if(returnResults(250)> 5 || returnResults(500)>5 || returnResults(1000)>5 || returnResults(2000) > 5) {
    return "Your hearing isn't optimal, you should get it checked by a doctor ASAP.";
  } else {
    return "Your hearing is good. If you go to a doctor, show them these results.";
  }
}