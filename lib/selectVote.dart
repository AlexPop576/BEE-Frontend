import 'package:bee_frontend/finalPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SelectVote extends StatefulWidget {
  const SelectVote({super.key});

  @override
  State<SelectVote> createState() => _SelectVoteState();
}

class _SelectVoteState extends State<SelectVote> {
  List<String> CList = ["PNL", "PSD", "AUR", "USR", "UDMR"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecteaza partidul preferat:"),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: CList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(CList[index]),
          );
        },
      )),
      bottomNavigationBar: SizedBox(
        height: 91,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  child: const FinalPage(),
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
              "Voteaza",
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
