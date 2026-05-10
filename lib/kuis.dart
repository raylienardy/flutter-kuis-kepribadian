import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object?>> pertanyaan;
  final void Function(int score) jawaban;
  final int soalIndex;

  const Kuis(this.pertanyaan, this.jawaban, this.soalIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan'] as String),
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object?>>)
            .map((jawabanText) {
          return Jawaban(
            () => jawaban(jawabanText['skor'] as int),
            jawabanText['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
