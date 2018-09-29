import 'dart:async';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'dart:async';

Future<String> scanQR() async {
  try {
    String barcode = await BarcodeScanner.scan();
    return barcode;
  } on PlatformException catch (e) {
    if (e.code == BarcodeScanner.CameraAccessDenied) {
      throw 'The user did not grant the camera permission!';
    } else {
      throw 'Unknown error: $e';
    }
  } on FormatException {
    return null;
  } catch (e) {
    throw 'Unknown error: $e';
  }
}
