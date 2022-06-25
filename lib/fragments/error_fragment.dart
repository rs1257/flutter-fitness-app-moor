import 'package:flutter/material.dart';

class ErrorFragment extends StatelessWidget {
  final String message;

  ErrorFragment(this.message);

  @override
  Widget build(BuildContext context) {
    return ErrorWidget(
      Text(this.message),
    );
  }
}