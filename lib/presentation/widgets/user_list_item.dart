import 'package:flutter/material.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Text("user list item"),
    );
  }
}
