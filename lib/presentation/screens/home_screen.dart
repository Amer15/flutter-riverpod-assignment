import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User List",
          style: TextStyle(
            fontSize: size.width * 0.05,
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: size.width * 0.045,
              color: Colors.black87,
            ),
            label: Text(
              "Add User",
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.black87,
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
