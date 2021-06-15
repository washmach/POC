import 'package:flutter/material.dart';
import 'package:integration_twilio/blocmanage/pages/entrybloc_page.dart';
import 'package:integration_twilio/flutter_riverpod/pages/entry_page.dart';
import 'package:integration_twilio/select_manage_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "home": (context) => SelectManagePage(),
    "riverpod": (context) => EntryPage(),
    'bloc': (context) => EntryBlocPage(),
  };
}
