import 'package:flutter/material.dart';

import 'entry_page.dart';

class WebRtcRoompage extends StatefulWidget {
  WebRtcRoompage({Key? key}) : super(key: key);

  @override
  _WebRtcRoompageState createState() => _WebRtcRoompageState();
}

class _WebRtcRoompageState extends State<WebRtcRoompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // _videoWidget(
          //   context,
          // ),
          // _videoWidget(
          //   context,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => EntryPage(),
            ),
          );
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.call_end,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _videoWidget(BuildContext context, dynamic widget) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    if (widget == null) {
      return Placeholder(
        fallbackWidth: width,
        fallbackHeight: height / 2.0,
      );
    }

    return SizedBox(
      width: width,
      height: height / 2.0,
      child: widget,
    );
  }
}
