import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'bottomnavigation.dart';

class WebFabookPage extends StatefulWidget {
  @override
  _WebFabookPageState createState() => _WebFabookPageState();
}

class _WebFabookPageState extends State<WebFabookPage> {
  @override
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
          positionbar: 0,
        ),
        body: WebView(
          initialUrl: 'https://facebook.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
