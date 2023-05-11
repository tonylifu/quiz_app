import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextWidget extends StatelessWidget {
  final String titleText;

  const TitleTextWidget({required this.titleText, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 159, 102, 169),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
