import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Column(
          children: [
            const SizedBox(
              height: 270,
            ),
            const Text(
              'Login Screen',
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: 'Input email address',
                labelText: 'Username / Email',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.security),
                hintText: 'Input Password',
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed('/forget');
                },
                child: const Text('Forget Password?')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    child: const Text('Register'),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    ));
  }
}
