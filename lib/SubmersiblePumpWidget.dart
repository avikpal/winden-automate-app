import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubmersiblePumpWidget extends StatefulWidget {
  @override
  _SubmersiblePumpState createState() => _SubmersiblePumpState();
}

class _SubmersiblePumpState extends State<SubmersiblePumpWidget> {
  bool _submersiblePumpState = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  child: Text('Submersible pump',
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      style: TextStyle(fontSize: 30)),
                ),
                Switch(
                  value: _submersiblePumpState,
                  onChanged: (value) {
                    setState(() {
                      _submersiblePumpState = value;
                    });
                  },
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.lightBlueAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
