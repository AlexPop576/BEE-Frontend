import 'dart:async';
import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  Timer? timer;
  static const maxSeconds = 5;
  int seconds = maxSeconds;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
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
            const Text("Votul tau a fost inregistrat cu succes!"),
            const SizedBox(height: 20),
            SizedBox(
              height: 125,
              width: 125,
              child: Stack(fit: StackFit.expand, children: [
                CircularProgressIndicator(
                  value: seconds / maxSeconds,
                  strokeWidth: 12,
                  valueColor: const AlwaysStoppedAnimation(Colors.grey),
                  backgroundColor: Colors.green,
                ),
                Center(
                  child: Text("$seconds",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
