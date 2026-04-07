import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  final String message;

  SettingView({
    Key? key,
    required this.message,
  }) : super(key: key);

  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _goBack(context);
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
