import 'package:flutter/material.dart';

@immutable
class VideoInfo {
  const VideoInfo({this.id, this.widget});

  final String? id;
  final Widget? widget;
}

@immutable
class UserInfo {
  const UserInfo({required this.user, required this.room});

  final String user;
  final String room;
}
