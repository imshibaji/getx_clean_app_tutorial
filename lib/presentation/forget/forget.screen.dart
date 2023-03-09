// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/forget.controller.dart';

class ForgetScreen extends GetView<ForgetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen_forget'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'screen_forget'.tr,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.person),
                hintText: 'Input Email',
                labelText: 'field_username'.tr,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('button_reset_password'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
