import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserCard extends StatelessWidget {
  final String username;
  final String imageUrl;
  final VoidCallbackAction onTap;

  const UserCard({
    super.key,
    required this.username,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.all(12),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(imageUrl),
              ),
              const SizedBox(width: 20),
              Text(
                "Bienvenido, $username",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
