import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  MainPage({Key? key}) : super(key: key);

  double? _deviceHeight;
  double? _deviceWidth;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return buildUI();
  }

  Widget buildUI() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _backgroundWidget(),
            _foregroundWidget(),
          ],
        ),
      ),
    );
  }

  Widget _backgroundWidget() {
    return Container(
      width: _deviceWidth,
      height: _deviceHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.00),
        image: const DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_960_720.jpg'),
            fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ),
    );
  }

  Widget _foregroundWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, _deviceHeight! * 0.02, 0, 0),
      width: _deviceHeight! * 0.88,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return Container(
      height: _deviceHeight! * 0.08,
      color: Colors.black54,
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _searchFieldWidget()
        ],
      ),
    );
  }

 Widget _searchFieldWidget() {
    return Container(
      width: _deviceWidth!*0.50,
      height: _deviceHeight!*0.05,
      child: TextField,
    );
 }
}
