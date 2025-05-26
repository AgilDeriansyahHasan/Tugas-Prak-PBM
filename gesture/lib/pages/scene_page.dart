// lib/pages/scene_page.dart
import 'package:flutter/material.dart';

class InteractiveScenePage extends StatefulWidget {
  final VoidCallback onQuestComplete;
  const InteractiveScenePage({super.key, required this.onQuestComplete});

  @override
  State<InteractiveScenePage> createState() => _InteractiveScenePageState();
}

class _InteractiveScenePageState extends State<InteractiveScenePage> {
  // Variabel state untuk posisi, dialog, dan status peti
  Offset _keyPosition = const Offset(50, 300);
  bool _isDialogueVisible = false;
  bool _isChestOpen = false;
  String _chestHint = "Terkunci...";

  // GlobalKeys untuk mendapatkan posisi dan ukuran widget
  final GlobalKey _chestKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Latar Belakang
          Container(color: const Color(0xff303952), child: const Center(child: Text("🪐", style: TextStyle(fontSize: 200, color: Colors.white24)))),

          // Elemen-elemen adegan akan kita tambahkan di sini
        ],
      ),
    );
  }
}
