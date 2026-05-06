import 'package:flutter/material.dart';

class UploadButtons extends StatelessWidget {
  const UploadButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _UploadBox(icon: Icons.image),
        SizedBox(width: 16),
        _UploadBox(icon: Icons.camera_alt),
      ],
    );
  }
}

class _UploadBox extends StatelessWidget {
  final IconData icon;

  const _UploadBox({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.blueGrey.shade200,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: Icon(icon, color: Colors.blueGrey),
    );
  }
}
