import 'package:flutter/material.dart';

@immutable
class UserInfo {
  const UserInfo({required this.user, required this.room});

  final String user;
  final String room;
}
