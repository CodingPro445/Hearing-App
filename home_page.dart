import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hearingappv2/test.dart';
import 'package:hearingappv2/results.dart';


class MyBapp extends StatelessWidget {
  const MyBapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.hearing_outlined)),
                Tab(icon: Icon(CupertinoIcons.doc_chart_fill)),
              ],
            ),
            title: const Text('The Hearing Test'),
          ),
          body: TabBarView(
            children: [
              Column(
                children:  <Widget>[
              Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                    'Welcome to the Hearing Test App',
                    style: TextStyle(fontSize: 50.0)
                  ),
              ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Please put your earbuds in and find a quiet place',
                        style: TextStyle(fontSize: 24.0)
                    ),
                  ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: ElevatedButton(
                  child: Text('Begin the Test'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestApp()),
                    );
                  },
                ),

                  ),

                ],
              ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                fixedSize: Size(10.0,10.0)
            ),
            child: Text('Press Here to Begin The Hearing Test'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestScreen()),
              );
            },
          ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(100.0),
                    child: ElevatedButton(
                      child: Text('View Results'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResultsPage()),
                        );
                      },
                    ),

                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}