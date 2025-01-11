import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinkitWidget extends StatelessWidget {
  const SpinkitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SpinKitFoldingCube(color: Colors.blue, size: 100.0));
  }
}
