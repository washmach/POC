import 'package:rxdart/rxdart.dart';

class UserBloc {
  final _userController = BehaviorSubject<String>();
  final _roomController = BehaviorSubject<String>();

  Stream<String> get userStream => _userController.stream;
  Stream<String> get roomStream => _roomController.stream;

  Function(String) get changeUser => _userController.sink.add;
  Function(String) get changeRoom => _roomController.sink.add;

  String get userValue => _userController.value;
  String get roomValue => _roomController.value;

  dispose() {
    _userController?.close();
    _roomController?.close();
  }
}
