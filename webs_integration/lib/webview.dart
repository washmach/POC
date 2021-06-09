import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'bottomnavigation.dart';

class WebViewExamples extends StatefulWidget {
  @override
  WebViewExamplesState createState() => WebViewExamplesState();
}

class WebViewExamplesState extends State<WebViewExamples> {
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
