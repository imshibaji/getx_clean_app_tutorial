import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/about.controller.dart';

class AboutScreen extends GetView<AboutController> {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AboutScreen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'AboutScreen is working',
                style: TextStyle(fontSize: 20),
              ),
              Obx(
                () => Text(
                  'Counter: ${controller.count}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        controller.increment();
                      },
                      child: const Text('Increment')),
                  ElevatedButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      child: const Text('Decrement')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
