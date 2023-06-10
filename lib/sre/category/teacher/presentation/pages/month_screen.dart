import 'package:flutter/material.dart';

class MonthScreen extends StatefulWidget {
  const MonthScreen({Key? key}) : super(key: key);

  @override
  State<MonthScreen> createState() => _MonthScreenState();
}

class _MonthScreenState extends State<MonthScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("month"),
    );
  }
}
