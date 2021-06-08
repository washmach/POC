import 'package:flutter/material.dart';
import 'package:integration_twilio/models/entities/entities.dart';
import 'package:integration_twilio/pages/webrtc_room_page.dart';
import 'package:integration_twilio/states/state_providers.dart';
import 'package:integration_twilio/states/user_bloc.dart';

class EntryPage extends StatelessWidget {
  final UserBloc ubloc = new UserBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Twilio Sample'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Twilio VideoRoom',
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push<MaterialPageRoute>(
                    MaterialPageRoute(
                      builder: (context) => WebRtcRoomPage(),
                    ),
                  );
                },
                color: Theme.of(context).buttonColor,
                child: const Text('Enter'),
              ),
              inputUser(),
              inputRoom(),
              FlatButton(
                onPressed: () {
                  UserInfo(user: ubloc.userValue, room: ubloc.roomValue);
                  Navigator.of(context).push<MaterialPageRoute>(
                    MaterialPageRoute(
                      builder: (context) => WebRtcRoomPage(),
                    ),
                  );
                },
                color: Theme.of(context).buttonColor,
                child: const Text('unirse a llamada'),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  inputUser() {
    return StreamBuilder(
      stream: ubloc.userStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8.0),
              filled: true,
              fillColor: Colors.white70,
              hintText: 'id user'.toUpperCase(),
              suffixIcon: Icon(Icons.account_circle, color: Colors.grey[600]),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            onChanged: (value) {
              ubloc.changeUser(value);
            });
      },
    );
  }

  inputRoom() {
    return StreamBuilder(
      stream: ubloc.roomStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextFormField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            filled: true,
            fillColor: Colors.white70,
            hintText: 'room'.toUpperCase(),
            suffixIcon: Icon(Icons.account_circle, color: Colors.grey[600]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
          onChanged: (value) => ubloc.changeRoom(value),
        );
      },
    );
  }
}
