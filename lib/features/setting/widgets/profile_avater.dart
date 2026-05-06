import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 45,
          backgroundColor: Color(0xffF2A7A7),
          child: Icon(Icons.person, size: 50, color: Colors.white),
        ),
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.black87,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.camera_alt, size: 16, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
