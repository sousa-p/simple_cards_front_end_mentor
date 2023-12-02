import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 600,
        child: Container(
          color: Colors.amber,
          child: const Padding(
            padding: EdgeInsets.all(32),
            child: Column(children: [
              Text(
                'SEDANS',
                style: TextStyle(fontFamily: 'BigShouldersDisplay'),
              ),
              SizedBox(height: 16),
              Text(
                'Choose a sedan for its affordability and excellent fuel economy. Ideal for cruising in the city or on your next road trip.',
                style: TextStyle(fontFamily: 'LexendDeca', fontSize: 15),
              ),
            ]),
          ),
        ));
  }
}
