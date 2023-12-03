import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardComponent extends StatelessWidget {
  final HSLColor background;
  final String image;
  final String title;
  final String body;

  const CardComponent(
      {Key? key,
      required this.background,
      required this.title,
      required this.body,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 375,
        height: 600,
        child: Container(
          color: background.toColor(),
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(image, semanticsLabel: title),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(title.toUpperCase(),
                        style: const TextStyle(
                          fontFamily: 'BigShouldersDisplay',
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 64),
                    child: Text(
                      body,
                      style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 15,
                        height: 2,
                        letterSpacing: 1,
                        color: const HSLColor.fromAHSL(1, 0, 0, 0.95).toColor(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 24)),
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            color: background.toColor(), fontSize: 16),
                      )),
                ]),
          ),
        ));
  }
}
