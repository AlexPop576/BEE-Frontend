import 'package:bee_frontend/dataCheck.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 206, 45),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_bee_png.png',
                height: 800,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(19),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: const DataCheck(),
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(milliseconds: 250),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            child: const Text(
              "Voteaza",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
