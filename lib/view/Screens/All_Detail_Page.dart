import 'package:flutter/material.dart';

class All_Detail_page extends StatelessWidget {
  const All_Detail_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Detail Page"),
      ),
      body: const CircularProgressIndicator(),
    );
  }
}
