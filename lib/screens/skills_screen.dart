import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/terminal_block.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  static const Map<String, List<Map<String, Object>>> groups = {
    'Mobile Development': [
      {'name': 'Flutter & Dart', 'level': 0.95},
      {'name': 'BLoC / Riverpod / Provider', 'level': 0.9},
      {'name': 'Clean Architecture', 'level': 0.9},
      {'name': 'Responsive UI', 'level': 0.9},
    ],

    'Backend & Data': [
      {'name': 'REST APIs', 'level': 0.95},
      {'name': 'Firebase', 'level': 0.9},
      {'name': 'WebSocket', 'level': 0.7},
      {'name': 'SQLite / Realm', 'level': 0.85},
    ],

    'Engineering & Tools': [
      {'name': 'Git / GitHub', 'level': 0.9},
      {'name': 'Dependency Injection', 'level': 0.85},
      {'name': 'Testing & Clean Code', 'level': 0.85},
      {'name': 'App Store & Play Store', 'level': 0.9},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 100),
        children: [
          Text('My Skills', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 26)),
          const SizedBox(height: 4),
          Text('# skills --list --verbose', style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          ...groups.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: TerminalBlock(
                promptLabel: entry.key,
                child: Column(
                  children: entry.value
                      .map((s) => _SkillBar(name: s['name'] as String, level: s['level'] as double))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillBar extends StatelessWidget {
  final String name;
  final double level;
  const _SkillBar({required this.name, required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14)),
              Text('${(level * 100).toInt()}%',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 11)),
            ],
          ),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: level,
              minHeight: 5,
              backgroundColor: AppColors.surfaceElevated,
              valueColor: const AlwaysStoppedAnimation(AppColors.accentSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
