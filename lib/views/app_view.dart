import 'package:flutter/material.dart';
import 'package:simple_cards_front_end_mentor/components/card_component.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Scaffold(body: Center(child: CardComponent())),
    );
  }
}
