import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double? result;

  const ResultScreen(this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: const Text('result'),
      ),
      body: Center(
        child: Text('${result!.round()}',
        style: const TextStyle(
          fontSize: 100
        ),),
      ),
    );
  }
}
