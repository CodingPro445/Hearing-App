import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hearingappv2/results.dart';
int count250 = 0;
int count500 = 0;
int count1000 = 0;
int count2000 = 0;
int frequency = 250;
double volume = 0.1;


class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return new MaterialApp(
  home: new TestApp()
  );
  }
}

class TestApp extends StatefulWidget{
  @override
  TestAppState createState() => new TestAppState();
}

class TestAppState extends State<TestApp> {
  final player = AudioCache(prefix: "assets/audios/");



  initState() {
    super.initState();
    loadMusic(volume, frequency);
  }

  Future loadMusic(volume1, frequency1) async {
    Future.delayed(Duration(milliseconds: 500), (){
      print('Future delayed executes after 5 seconds ');
    });player.play(frequency1.toString() + ".mp3", volume: volume1);
  }

  void soundButton(volume2, frequency2, heard) {
    if (frequency2 == 250) {
      if (volume2 == 0.1) {
        count250 = 1;
      }
      else if (volume2 == 0.2) {
        count250 = 2;
      }
      else if (volume2 == 0.3) {
        count250 = 3;
      }
      else if (volume2 == 0.4) {
        count250 = 4;
      }
      else if (volume2 == 0.5) {
        count250 = 5;
      }
      else if (volume2 == 0.6) {
        count250 = 6;
      }
      else if (volume2 == 0.7) {
        count250 = 7;
      }
      else if (volume2 == 0.8) {
        count250 = 8;
      }
      else if (volume2 == 0.9) {
        count250 = 9;
      }
      else if (volume2 == 1.0) {
        count250 = 10;
      }
    } else if (frequency2 == 500) {
      if (volume2 == 0.1) {
        count500 = 1;
      }
      else if (volume2 == 0.2) {
        count500 = 2;
      }
      else if (volume2 == 0.3) {
        count500 = 3;
      }
      else if (volume2 == 0.4) {
        count500 = 4;
      }
      else if (volume2 == 0.5) {
        count500 = 5;
      }
      else if (volume2 == 0.6) {
        count500 = 6;
      }
      else if (volume2 == 0.7) {
        count500 = 7;
      }
      else if (volume2 == 0.8) {
        count500 = 8;
      }
      else if (volume2 == 0.9) {
        count500 = 9;
      }
      else if (volume2 == 1.0) {
        count500 = 10;
      }
    } else if (frequency2 == 1000) {
      if (volume2 == 0.1) {
        count1000 = 1;
      }
      else if (volume2 == 0.2) {
        count1000 = 2;
      }
      else if (volume2 == 0.3) {
        count1000 = 3;
      }
      else if (volume2 == 0.4) {
        count1000 = 4;
      }
      else if (volume2 == 0.5) {
        count1000 = 5;
      }
      else if (volume2 == 0.6) {
        count1000 = 6;
      }
      else if (volume2 == 0.7) {
        count1000 = 7;
      }
      else if (volume2 == 0.8) {
        count1000 = 8;
      }
      else if (volume2 == 0.9) {
        count1000 = 9;
      }
      else if (volume2 == 1.0) {
        count1000 = 10;
      }
    } else if (frequency2 == 2000) {
      if (volume2 == 0.1) {
        count2000 = 1;
      }
      else if (volume2 == 0.2) {
        count2000 = 2;
      }
      else if (volume2 == 0.3) {
        count2000 = 3;
      }
      else if (volume2 == 0.4) {
        count2000 = 4;
      }
      else if (volume2 == 0.5) {
        count2000 = 5;
      }
      else if (volume2 == 0.6) {
        count2000 = 6;
      }
      else if (volume2 == 0.7) {
        count2000 = 7;
      }
      else if (volume2 == 0.8) {
        count2000 = 8;
      }
      else if (volume2 == 0.9) {
        count2000 = 9;
      }
      else if (volume2 == 1.0) {
        count2000 = 10;
      }
    }
    if (heard) {
      if (frequency < 2000) {
        frequency = frequency2 * 2;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResultsPage()),
        );
      }
      volume = 0.1;
      loadMusic(volume, frequency);
    } else {
      volume = volume + 0.1;
      loadMusic(volume, frequency);
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(

              child: ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          soundButton(volume, frequency, true);
                        },
                        child: Text("Press here whenever you hear a sound")
                    ),
                    ElevatedButton(
                        onPressed: () {
                          soundButton(volume, frequency, false);
                        },
                        child: Text("Press here if you don't hear a sound")
                    )
                  ]
              )
          )
      ),
    );
  }
}

int returnResults(freq) {
  if(freq == 250){
    return count250;
  } else if(freq == 500){
    return count500;
  } else if(freq == 1000){
    return count1000;
  } else if(freq == 2000){
    return count2000;
  } else {
    return 1;
  }
}