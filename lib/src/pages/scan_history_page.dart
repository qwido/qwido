import 'package:flutter/material.dart';
import 'package:qwido/domain.dart';
import 'package:qwido/widgets.dart';

class ScanHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historique des Qwid',
          style: Theme.of(context).textTheme.headline,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: ArtworkRepository()
            .getAll()
            .map((vm) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: ArtworkTile(
                    artwork: vm,
                  ),
            ))
            .toList(),
      ),
    );
  }
}
