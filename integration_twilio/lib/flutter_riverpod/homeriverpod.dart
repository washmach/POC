import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_twilio/flutter_riverpod/pages/entry_page.dart';

class HomeRiverpod extends StatelessWidget {
  const HomeRiverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: EntryPage(),
    );
  }
}
