import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final VoidCallback handlePilih;
  final String jawabanText;
  const Jawaban(this.handlePilih, this.jawabanText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handlePilih,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // opsional, agar teks terlihat
        ),
        child: Text(jawabanText),
      ),
    );
  }
}
