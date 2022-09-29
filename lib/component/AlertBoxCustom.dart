import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAlertBox extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CustomAlertBox({super.key, required this.Dialog});
  // ignore: non_constant_identifier_names
  List<Widget> Dialog;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      backgroundColor: const Color.fromARGB(229, 194, 199, 203),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      actions: Dialog,
    );
  }
}
