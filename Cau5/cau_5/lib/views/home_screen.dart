import 'package:flutter/material.dart';

import '../widgets/color_preview_box.dart';
import 'pick_color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _selectedColor = Colors.red;

  Future<void> _pickColor() async {
    final Color? pickedColor = await Navigator.push<Color>(
      context,
      MaterialPageRoute(
        builder: (context) => const PickColorScreen(),
      ),
    );

    if (pickedColor != null) {
      setState(() {
        _selectedColor = pickedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorPreviewBox(color: _selectedColor),
              const SizedBox(height: 24),
              Text(
                'Màu hiện tại: ${_colorName(_selectedColor)}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _pickColor,
                child: const Text('Pick Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _colorName(Color color) {
    if (color == Colors.red) return 'Red';
    if (color == Colors.blue) return 'Blue';
    if (color == Colors.green) return 'Green';
    return 'Unknown';
  }
}

