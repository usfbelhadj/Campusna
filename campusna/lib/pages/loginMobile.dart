import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPageM extends StatelessWidget {
  const LoginPageM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SizedBox(
          width: 1000,
          height: 1060,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("logo-campusna-2.png", width: 300, height: 200),
                  GradientText(
                    "L'éduction Augmentée",
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                    ),
                    colors: [
                      Color.fromARGB(255, 218, 52, 93),
                      Color.fromARGB(255, 132, 39, 148),
                    ],
                  ),
                ],
              ),
              Container(
                width: 450,
                color: Color.fromARGB(255, 253, 248, 227),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                            fontFamily: "fira-code",
                            height: 0.9),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(200, 50)),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 0, 0, 0)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10))))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
