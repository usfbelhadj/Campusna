import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String text;
  const CardWidget({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          color: Colors.white,
          child: Column(children: [
            Expanded(
                flex: 3,
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                )),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 96, 24, 109),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "fira-code",
                          height: 0.9),
                    ) //custom text and style
                        )))
          ])),
      onTap: () {
        print('Card tapped on ' + text);
      },
    );
  }
}
