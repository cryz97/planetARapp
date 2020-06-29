import 'package:flutter/material.dart';
import 'package:planetapp/ui/modelsArPages/selectArModelPage.dart';
import 'package:planetapp/ui/normalModelsPages/selectModelPage.dart';
import 'package:video_player/video_player.dart';

import 'astronautPages/solarSystemPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VideoPlayerController _videoPlayerController;
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset("assets/videos/spaceLoop.mp4")
          ..initialize().then((_) {
            _videoPlayerController.play();
            _videoPlayerController.setLooping(true);
            setState(() {});
          });
  }

  Widget _createButton(Function _onPressed, String text) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.10,
      child: OutlineButton(
          borderSide: BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          highlightedBorderColor: Colors.deepPurple,
          child: Container(
            child: Text(
              "$text",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.035),
            ),
          ),
          onPressed: _onPressed),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: VideoPlayer(_videoPlayerController),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _createButton(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SolarSystemPage()));
                  }, "Exploración astronauta"),
                  _createButton(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SelectArModelPage()));
                  }, "Modelos 3D RA"),
                  _createButton(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SelectModelPage()));
                  }, "Modelos 3D"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
}
