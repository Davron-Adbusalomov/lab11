import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
    final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;

Future<void> _createAccount() async {
try {
UserCredential userCredential = await auth.createUserWithEmailAndPassword(
email: _emailController.text,
password: _passwordController.text,
);
print('Created account: ${userCredential.user}');
} catch (e) {
  print('Failed to create account: $e');
}}

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Username'),
            ),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Full Name'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement user registration and Firebase storage logic
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}


