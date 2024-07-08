import 'package:bee_frontend/selectVote.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DataCheck extends StatefulWidget {
  const DataCheck({super.key});

  @override
  State<DataCheck> createState() => _DataCheckState();
}

class _DataCheckState extends State<DataCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Introduceti cartea de identitate"),
              const SizedBox(height: 50),
              SizedBox(
                height: 57,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const SelectVote(),
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 250),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  child: const Text(
                    "Continua",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
