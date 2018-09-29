import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

Future<String> scan() async {
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
    throw 'null (User returned using the "back"-button before scanning anything. Result)';
  } catch (e) {
    throw 'Unknown error: $e';
  }
}
