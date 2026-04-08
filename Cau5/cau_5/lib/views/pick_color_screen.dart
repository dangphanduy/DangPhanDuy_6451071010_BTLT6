import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  static const List<_ColorChoice> _choices = [
    _ColorChoice(name: 'Red', color: Colors.red),
    _ColorChoice(name: 'Blue', color: Colors.blue),
    _ColorChoice(name: 'Green', color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Color Screen'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _choices.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final choice = _choices[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: choice.color,
              ),
              title: Text(choice.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pop(context, choice.color);
              },
            ),
          );
        },
      ),
    );
  }
}

class _ColorChoice {
  const _ColorChoice({required this.name, required this.color});

  final String name;
  final Color color;
}

