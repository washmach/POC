import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:integracion_twiliobloc/blocmanage/blocs/video_bloc.dart';
import 'package:integracion_twiliobloc/blocmanage/pages/entry_page.dart';
import 'package:integracion_twiliobloc/blocmanage/repository/video_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(create: (context) => VideoBloc(), child: EntryPage()),
    );
  }
}
