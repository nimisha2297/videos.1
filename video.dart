import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

myvideo() {
  final videoPlayerController =
      VideoPlayerController.asset("assets/video1.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: false,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}

myvideosecond() {
  final videoPlayerController = VideoPlayerController.network(
      "https://github.com/nimisha2297/videos.1/blob/master/video1.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: false,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}
