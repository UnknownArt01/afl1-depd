import 'package:flutter/material.dart';
import 'package:selyandaru_afl1/views/tampilan.dart';



void main() {
  runApp(const MyNewApps());
}

class MyNewApps extends StatelessWidget {
  const MyNewApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Home(),
        '/nextpage': (context) => const Login(),
      },
    );
  }
}
