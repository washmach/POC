import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_twilio/flutter_riverpod/pages/entry_page.dart';
import 'package:integration_twilio/flutter_riverpod/states/state_providers.dart';

class WebRtcRoomPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final controller = watch(webRtcController);
    final state = watch(webRtcController);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _videoWidget(context, state.localVideoInfo.widget),
          _videoWidget(context, state.remoteVideoInfo.widget),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await controller.endCall();
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
