import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/forget.controller.dart';

class ForgetScreen extends GetView<ForgetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForgetScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForgetScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
