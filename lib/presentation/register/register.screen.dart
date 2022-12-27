import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RegisterScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
