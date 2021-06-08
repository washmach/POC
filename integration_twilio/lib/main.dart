import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:integration_twilio/pages/entry_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: EntryPage(),
      ),
    ),
  );
}
