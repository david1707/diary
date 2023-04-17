import 'package:flutter/material.dart';

import 'package:diary/screens/entry/entries_page.dart';
import 'package:diary/screens/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/login.png'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EntriesPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 0),
              ),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 0),
              ),
              child: const Text('Register'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
