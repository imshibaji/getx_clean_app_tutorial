import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/settings.controller.dart';

class SettingsScreen extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SettingsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
