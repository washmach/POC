import 'package:flutter/cupertino.dart';

class Constants {
  // TODO(anyone): Replace with your endpoint
  static twilioTokenEndpoint(String user, String room) {
    return 'https://localhost:44341/$user/$room';
  }
}
