import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/about.controller.dart';

class AboutScreen extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'AboutScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            Obx(
              () => Text(
                'Counter: ${controller.count}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text('Increment')),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text('Decrement')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
