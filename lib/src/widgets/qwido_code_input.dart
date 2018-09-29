import 'package:flutter/material.dart';
import 'package:qwido/utils.dart';

class QwidoCodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: themeData.disabledColor))),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          padding: EdgeInsets.only(
            left: 118.0,
            right: 60.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/qwido_label.png"),
            ),
          ),
          child: TextField(
            maxLines: 1,
            style: TextStyle(
              fontFamily: "Proxima",
              color: Theme.of(context).textTheme.body2.color,
              fontSize: 24.0,
              letterSpacing: 10.0,
            ),
            decoration: InputDecoration(
              hintText: 'QWIDO',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
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
        ),
      ),
    );
  }
}
