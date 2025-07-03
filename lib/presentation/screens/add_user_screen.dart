import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_assignment/data/model/add_user/add_user_model.dart';
import 'package:flutter_riverpod_assignment/presentation/providers/add_user_provider.dart';

class AddUserScreen extends ConsumerStatefulWidget {
  const AddUserScreen({super.key});

  @override
  ConsumerState<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends ConsumerState<AddUserScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final jobController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    jobController.dispose();
  }

  void onSubmitHandler() async {
    if (_formKey.currentState!.validate()) {
      final user = AddUser(name: emailController.text, job: jobController.text);
      final result = await ref.read(addUserProvider.notifier).submitUser(user);

      if (!mounted) return;

      result.whenData((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User added successfully")),
        );
        Navigator.pop(context);
      });

      if (result.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to add user: ${result.error}")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final state = ref.watch(addUserProvider);
    print(state.isLoading);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add User",
          style: TextStyle(
            fontSize: size.width * 0.05,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (v) =>
                    v == null || !v.contains('@') ? 'Invalid email' : null,
              ),
              TextFormField(
                controller: jobController,
                decoration: const InputDecoration(labelText: 'Job'),
                validator: (v) => v == null || v.isEmpty ? 'Enter a job' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: state is AsyncLoading ? null : onSubmitHandler,
                child: state is AsyncLoading
                    ? const SizedBox(
                        width: 15,
                        height: 15,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        ),
                      )
                    : const Text(
                        "Add User",
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
