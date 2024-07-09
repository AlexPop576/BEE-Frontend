import 'package:bee_frontend/selectVote.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DataCheck extends StatefulWidget {
  const DataCheck({super.key});

  @override
  State<DataCheck> createState() => _DataCheckState();
}

class _DataCheckState extends State<DataCheck> {
  int checked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Introduceți cartea de identitate",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(checked == 0) {
                          checked = 1;
                        }else{
                          checked = 0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: checked == 1 ? Colors.green : Colors.red,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    child: const Text(
                      "CI",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
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
              checked == 1
                  ? Navigator.push(
                      context,
                      PageTransition(
                        child: const SelectVote(),
                        type: PageTransitionType.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 250),
                      ),
                    )
                  : null;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: checked == 1 ? Colors.yellow : Colors.grey,
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
        ),
      ),
    );
  }
}
