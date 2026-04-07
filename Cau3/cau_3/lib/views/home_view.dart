import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import './setting_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  void _goToSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SettingView(
            message: 'Setting View nè',
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
      ),
      body: Center(
        child: PrimaryButton(
          title: 'Go to Settings',
          onPressed: () {
            _goToSettings(context);
          },
        ),
      ),
    );
  }
}
