import 'package:flutter/material.dart';
import 'package:qwido/src/utils/routing.dart';

class CapturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: FlatButton(
              onPressed: () => Navigator.push(
                    context,
                    RoutingAssistant.navToArtworkPage(
                      ArtId("12"),
                    ),
                  ),
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
            controller: controller,
            onEditingComplete: () => Navigator.push(
                  context,
                  RoutingAssistant.navToArtworkPage(
                    ArtId(controller.text),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
