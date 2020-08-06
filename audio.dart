import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp() {
  AudioPlayer advancedPlayer = new AudioPlayer();
  AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      RaisedButton(
        child: Row(
          children: <Widget>[
            Icon(Icons.queue_music),
            Text("Audio 1"),
          ],
        ),
        onPressed: () {
          audioCache.play("audio1 (2).mp3");
          Fluttertoast.showToast(
              msg: "Song is Played from the local assets",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        elevation: 20.0,
      ),
      RaisedButton(
        child: Row(
          children: <Widget>[
            Icon(Icons.queue_music),
            Text("Audio 2"),
          ],
        ),
        onPressed: () {
          advancedPlayer.play(
              "https://raw.githubusercontent.com/nimisha2297/videos.1/master/audio1%20(2).mp3");
          Fluttertoast.showToast(
              msg: "Song is Played from the Network",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        elevation: 20.0,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 425),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _IBtn(
              onPressed: () => advancedPlayer.resume(),
              ico: Icons.play_arrow,
            ),
            _IBtn(
              onPressed: () => advancedPlayer.pause(),
              ico: Icons.pause,
            ),
            _IBtn(
              onPressed: () => advancedPlayer.stop(),
              ico: Icons.stop,
            ),
          ],
        ),
      ),
    ],
  );
}

class _IBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final ico;

  const _IBtn({Key key, this.onPressed, this.ico}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(ico),
      onPressed: onPressed,
      iconSize: 50.0,
      color: Colors.black87,
    );
  }
}
