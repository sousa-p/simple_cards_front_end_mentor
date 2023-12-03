import 'package:flutter/material.dart';
import 'package:simple_cards_front_end_mentor/components/card_component.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      CardComponent(
                        background: HSLColor.fromAHSL(1, 31, 0.77, .52),
                        image: 'assets/images/icon-sedans.svg',
                        title: 'Sedans',
                        body:
                            'Choose a sedan for its affordability and excellent fuel economy. Ideal for cruising in the city or on your next road trip',
                      ),
                      CardComponent(
                        background: HSLColor.fromAHSL(1, 184, 1, .22),
                        image: 'assets/images/icon-suvs.svg',
                        title: 'SUVs',
                        body:
                            'Take an SUV for its spacious interior, power, and versatility. Perfect for your next family vacation and off-road adventures.',
                      ),
                      CardComponent(
                        background: HSLColor.fromAHSL(1, 179, 1, .13),
                        image: 'assets/images/icon-luxury.svg',
                        title: 'Luxury',
                        body:
                            'Cruise in the best car brands without the bloated prices. Enjoy the enhanced comfort of a luxury rental and arrive in style.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
