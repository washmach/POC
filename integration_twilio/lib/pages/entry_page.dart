import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_twilio/pages/webrtc_room_page.dart';

class EntryPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Twilio Integration'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Twilio VideoRoom',
              ),
              inputUser(),
              inputRoom(),
              FlatButton(
                onPressed: () {
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
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
          onChanged: (value) {}),
    );
  }

  inputRoom() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
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
        onChanged: (value) {},
      ),
    );
  }
}
