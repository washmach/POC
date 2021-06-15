import 'package:integracion_twiliobloc/blocmanage/models/room_model.dart';
import 'package:http/http.dart' as http;

class VideoRepository {
  String getTokkenaccess(UserInfo roominfo) {
    final url = 'http://washmach.somee.com/${roominfo.user}/${roominfo.room}';
    var uriurl = Uri.parse(url);

    final resp = http.get(uriurl);

    return resp.toString();
  }
}
