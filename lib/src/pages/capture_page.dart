import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';

class CapturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100.0,
          bottom: 0.0,
          left: 24.0,
          right: 24.0,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: FlatButton(
                onPressed: () => scanQR().then((code) {
                      if (code != null) {
                        Navigator.push(context,
                            RoutingAssistant.navToArtworkPage(ArtId(code)));
                      }
                    }),
                child: Icon(
                  Icons.photo_camera,
                  size: 250.0,
                ),
              ),
            ),
            Padding(
              child: null,
              padding: EdgeInsets.only(
                top: 100.0,
                bottom: 20.0,
              ),
            ),
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
      ),
    );
  }
}
