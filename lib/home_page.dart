import 'package:flutter/material.dart';

import 'dados.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        title: Text('Ola mundo'),
        backgroundColor: Colors.teal.shade900,
      ),
      body: Dados(),
    );
  }
}
