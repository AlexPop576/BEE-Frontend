import 'package:bee_frontend/finalPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SelectVote extends StatefulWidget {
  const SelectVote({super.key});

  @override
  State<SelectVote> createState() => _SelectVoteState();
}

class _SelectVoteState extends State<SelectVote> {
  List<String> CList = ["PNL", "PSD", "AUR", "USR", "UDMR", "ARGINT"];
  List<Color> ColorList = [Colors.yellow, Colors.blue, Colors.red];
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecteaza partidul preferat:"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView.builder(
          itemCount: CList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SizedBox(
                height: 150,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorList[index%3],
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ), // Set the radius to 0 for a square shape
                      ),
                      side: selected == index
                              ? const BorderSide(
                                  color: Colors.white38,
                                  width: 10)
                              : BorderSide(
                                  color:
                                      ColorList[index%3],
                                  width: 3),
                    ),
                    child: Row(children: [
                      Text(
                        CList[index],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ])),
              ),
            );
          },
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: 95,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(19),
          child: ElevatedButton(
            onPressed: () {
              selected != -1 ?
              Navigator.push(
                context,
                PageTransition(
                  child: const FinalPage(),
                  type: PageTransitionType.rightToLeftWithFade,
                  duration: const Duration(milliseconds: 250),
                ),
              ) : null;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selected != -1 ? Colors.yellow : Colors.grey,
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
