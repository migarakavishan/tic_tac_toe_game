import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/screens/choose_side_screen.dart';

class PlayModeScreen extends StatefulWidget {
  const PlayModeScreen({super.key});

  @override
  State<PlayModeScreen> createState() => _PlayModeScreenState();
}

class _PlayModeScreenState extends State<PlayModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/cross.png',
                  width: 100,
                ),
                Image.asset(
                  'assets/circle.png',
                  width: 100,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Choose your play mode',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(300, 50),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 10,
                    shadowColor: Colors.blueGrey),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ChooseSideScreen(isAi: true),
                      ));
                },
                child: const Text(
                  "With Ai",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(300, 50),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 10,
                    shadowColor: Colors.grey),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ChooseSideScreen(isAi: false),
                      ));
                },
                child: const Text(
                  "With Friends",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
