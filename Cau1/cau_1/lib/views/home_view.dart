import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../utils/route_names.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: MainButton(
          title: 'Go to About',
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.about);
          },
        ),
      ),
    );
  }
}
