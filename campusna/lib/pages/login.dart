import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'dashbord.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SizedBox(
          width: 1800,
          height: 1200,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("logo-campusna-2.png", width: 600, height: 500),
                  GradientText(
                    "L'éducation Augmentée",
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Roboto",
                    ),
                    colors: [
                      Color.fromARGB(255, 218, 52, 93),
                      Color.fromARGB(255, 132, 39, 148),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                width: 650,
                color: Color.fromARGB(255, 248, 236, 253),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 96, 24, 109),
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
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
                        obscureText: true,
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashbord()),
                            );
                          },
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
                                Color.fromARGB(255, 96, 24, 109),
                              ),
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
