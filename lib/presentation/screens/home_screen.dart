import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_assignment/presentation/providers/user_provider.dart';
import 'package:flutter_riverpod_assignment/presentation/screens/add_user_screen.dart';
import 'package:flutter_riverpod_assignment/presentation/widgets/user_list_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final userState = ref.watch(userProvider);
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
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddUserScreen(),
              ),
            ),
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
      body: userState.when(
        data: (users) => ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) => UserListItem(
            user: users[index],
          ),
        ),
        error: (e, _) => Center(
          child: Text("error: $e"),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
