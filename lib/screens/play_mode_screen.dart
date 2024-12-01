import 'package:flutter/material.dart';

class PlayModeScreen extends StatefulWidget {
  const PlayModeScreen({super.key});

  @override
  State<PlayModeScreen> createState() => _PlayModeScreenState();
}

class _PlayModeScreenState extends State<PlayModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f5),
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
            )
          ],
        ),
      ),
    );
  }
}
