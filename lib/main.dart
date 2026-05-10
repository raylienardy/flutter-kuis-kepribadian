import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _soalIndex = 0;
  int totalScore = 0;

  final List<Map<String, Object?>> pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan anda kunjungi?',
      'jawaban': [
        {'text': 'Penggunungan', 'skor': 10},
        {'text': 'Pantai', 'skor': 5},
        {'text': 'Mall', 'skor': 3},
        {'text': 'Hutan', 'skor': 1},
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'text': 'Merah', 'skor': 3},
        {'text': 'Biru', 'skor': 11},
        {'text': 'Hijau', 'skor': 5},
        {'text': 'Hitam', 'skor': 9},
      ],
    },
    {
      'pertanyaan': 'Apa hobby anda?',
      'jawaban': [
        {'text': 'Sepak Bola', 'skor': 1},
        {'text': 'Basket', 'skor': 1},
        {'text': 'Berenang', 'skor': 1},
        {'text': 'Ngoding', 'skor': 1},
      ],
    },
  ];

  void resetKuis() {
    setState(() {
      _soalIndex = 0;
      totalScore = 0;
    });
  }

  void _jawaban(int score) {
    totalScore += score;
    setState(() {
      _soalIndex++;
    });
    if (_soalIndex < pertanyaan.length) {
      debugPrint('Masih ada soal berikutnya!');
    } else {
      debugPrint('Sudah tidak ada soal');
    }
    debugPrint('$_soalIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Kuis'),
        ),
        body: _soalIndex < pertanyaan.length
            ? Kuis(pertanyaan, _jawaban, _soalIndex)
            : Hasil(totalScore, resetKuis),
      ),
    );
  }
}
