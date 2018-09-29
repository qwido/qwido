import 'package:flutter/material.dart';

class CapturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: FlatButton(
              onPressed: null,
              child: Icon(
                Icons.photo_camera,
                size: 250.0,
              ),
            ),
          ),
          Divider(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Code Qwido',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            keyboardType: TextInputType.numberWithOptions(),
          ),
        ],
      ),
    );
  }
}
