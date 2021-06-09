import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webs_integration/bottomnavigation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebYoutubePage extends StatefulWidget {
  @override
  _WebYoutubePageState createState() => _WebYoutubePageState();
}

class _WebYoutubePageState extends State<WebYoutubePage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottonNavigationBar(
          positionbar: 1,
        ),
        body: WebView(
          initialUrl: 'https://youtube.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
