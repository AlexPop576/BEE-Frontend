import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  Timer? timer, millisecondsTimer;
  static const maxSeconds = 4;
  int seconds = maxSeconds;

  @override
  void initState() {
    super.initState();
    startTimerSeconds();
  }

  void startTimerSeconds() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        seconds--;
        if (seconds == 0) {
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset('assets/Confirmed.json',
                    repeat: false, reverse: true)),
            const SizedBox(height: 70),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Votul tău a fost înregistrat cu succes!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
