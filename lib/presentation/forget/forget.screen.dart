// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/forget.controller.dart';

class ForgetScreen extends GetView<ForgetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgetScreen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'ForgetScreen',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: 'Input Email',
                labelText: 'Username / Email',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
