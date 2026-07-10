import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // 1. Define the style here, above build() or inside it either works.
  //    Putting it as a class-level getter/field keeps build() cleaner.
  static final ButtonStyle snoopyButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: const Color(0xFFFFD84D),
    minimumSize: const Size(140, 48),
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    side: const BorderSide(
      color: Colors.black,
      width: 3,
    ),
  ).copyWith(
    side: WidgetStateProperty.resolveWith<BorderSide?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) {
          return const BorderSide(color: Colors.brown, width: 3);
        }
        return const BorderSide(color: Colors.black, width: 3);
      },
    ),
    elevation: WidgetStateProperty.resolveWith<double?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) return 0;
        return 4;
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          // 2. The actual button widget goes here, in the children list.
          //    Align/Center controls where it sits on screen.
          Align(
            alignment: const Alignment(0, 0.6),
            child: OutlinedButton(
              style: snoopyButtonStyle,
              onPressed: () {
                // TODO: add workout logic later
              },
              child: const Text('STEPS'),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: OutlinedButton(
              style: snoopyButtonStyle,
              onPressed: () {
                // TODO: add workout logic later
              },
              child: const Text('SETTINGS'),
            ),
          ),
        ],
      ),
    );
  }
}