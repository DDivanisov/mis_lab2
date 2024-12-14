import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  final String setup;
  final String punchline;

  const JokeCard({
    super.key,
    required this.setup,
    required this.punchline,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
      width: double.infinity, // Ensures the card stretches to full available width
      padding: const EdgeInsets.all(16.0), // Adds consistent padding inside the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the start (left)
        mainAxisSize: MainAxisSize.min, // Prevents extra height by sizing to fit content
        children: [
          Text(
            setup,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10), // Adds space between the setup and punchline
          Text(
            punchline,
            style: const TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
    ),
  );
  }
}