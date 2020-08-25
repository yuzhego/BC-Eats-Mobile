import 'package:flutter/material.dart';

class Agreement extends StatefulWidget {
  Agreement({Key key}) : super(key: key);

  @override
  _AgreementState createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agreement"),
      ),
    );
  }
}
