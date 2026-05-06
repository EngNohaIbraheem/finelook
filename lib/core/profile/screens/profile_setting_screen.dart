import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Setting'),
        leading: BackButton(onPressed: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            CircleAvatar(radius: 40),
            SizedBox(height: 30),
            _TextField(label: 'First Name', value: 'Sunie'),
            _TextField(label: 'Last Name', value: 'Pham'),
            _TextField(label: 'Email', value: 'sunieux@gmail.com'),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final String label;
  final String value;

  const _TextField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        initialValue: value,
        decoration: InputDecoration(labelText: label),
      ),
    );
  }
}
