import 'package:flutter/material.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset('lib/assets/logo.png', height: 50),
              ),
              const SizedBox(height: 20),

              //title
              Text(
                'Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              const SizedBox(height: 20),

              //subtitle
              Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              //button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Container(
                    decoration: BoxDecoration(color: Colors.grey[900]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: const Center(
                        child: Text('Shop Now',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
