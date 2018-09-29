import 'package:fluttertoast/fluttertoast.dart';

class ErrorToast {
  static void showError() {
    Fluttertoast.showToast(
      msg: "Oeuvre introuvable",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      bgcolor: "#ed274f",
      textcolor: "#ffffff",
    );
  }
}