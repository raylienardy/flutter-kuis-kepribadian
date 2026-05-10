import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetKuis;
  const Hasil(this.totalScore, this.resetKuis, {super.key});

  String get hasilText {
    if (totalScore <= 8) {
      return "Anda hebat sekali";
    } else if (totalScore <= 12) {
      return "Anda sedikit jahat";
    } else if (totalScore <= 16) {
      return "Anda agak aneh";
    } else {
      return "Anda sangat jahat";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetKuis,
            child: const Text('Reset'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
