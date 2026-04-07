import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../utils/route_names.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _nameController = TextEditingController();
  String? _errorText;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _validateAndNavigate() {
    setState(() {
      if (_nameController.text.trim().isEmpty) {
        _errorText = 'Tên không được để trống';
      } else {
        _errorText = null;
        Navigator.pushNamed(
          context,
          RouteNames.profile,
          arguments: _nameController.text.trim(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Tên người dùng',
                hintText: 'Nhập tên của bạn',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                errorText: _errorText,
              ),
              onChanged: (value) {
                if (_errorText != null && value.trim().isNotEmpty) {
                  setState(() {
                    _errorText = null;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            MainButton(
              title: 'Go to Profile',
              onPressed: _validateAndNavigate,
            ),
          ],
        ),
      ),
    );
  }
}
