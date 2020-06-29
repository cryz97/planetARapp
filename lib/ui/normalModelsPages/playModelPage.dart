import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayModelPage extends StatefulWidget {
  final String planet;
  PlayModelPage({Key key, @required this.planet}) : super(key: key);
  @override
  _PlayModelPageState createState() => _PlayModelPageState();
}

class _PlayModelPageState extends State<PlayModelPage> {
  VideoPlayerController _videoPlayerController;
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset("assets/videos/${widget.planet}3D.mp4")
          ..initialize().then((_) {
            _videoPlayerController.play();
            _videoPlayerController.setLooping(true);
            _videoPlayerController.setVolume(0.0);
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox.expand(
          child: Center(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Transform.rotate(
                angle: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: VideoPlayer(_videoPlayerController),
                ),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
}
