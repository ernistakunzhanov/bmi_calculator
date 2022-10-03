import 'package:flutter/material.dart';

class MisalBarak extends StatefulWidget {
  const MisalBarak({Key key}) : super(key: key);

  @override
  State<MisalBarak> createState() => _MisalBarakState();
}

class _MisalBarakState extends State<MisalBarak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Misal Barak'),
      ),
    );
  }
}
