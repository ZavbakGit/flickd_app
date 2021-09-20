import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return buildUI();
  }

  Widget buildUI() {
    return const Scaffold(
      body: Center(
        child: Text('This is Main page'),
      ),
    );
  }
}
