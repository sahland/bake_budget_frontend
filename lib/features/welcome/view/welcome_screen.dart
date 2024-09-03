import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/icons/car_logo.png',
              color: Theme.of(context).colorScheme.surface,
            ),
            Text('Car&Key',
                style: GoogleFonts.racingSansOne(
                    fontSize: 24, color: Theme.of(context).colorScheme.surface))
          ],
        ),
      ),
    );
  }
}
