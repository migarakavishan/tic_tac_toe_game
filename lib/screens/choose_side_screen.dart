import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/screens/game_screen.dart';

class ChooseSideScreen extends StatefulWidget {
  final bool isAi;
  const ChooseSideScreen({super.key, required this.isAi});

  @override
  State<ChooseSideScreen> createState() => _ChooseSideScreenState();
}

class _ChooseSideScreenState extends State<ChooseSideScreen> {
  String selectedSide = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pick your Side',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/cross.png',
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: 'X',
                        groupValue: selectedSide,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            selectedSide = value!;
                          });
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/circle.png',
                      width: 110,
                      fit: BoxFit.cover,
                    ),
                    Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: '0',
                        groupValue: selectedSide,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            selectedSide = value!;
                          });
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GameScreen(
                            playerSide: selectedSide, isAi: widget.isAi),
                      ));
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 24, color: Colors.black54),
                ))
          ],
        ),
      ),
    );
  }
}
