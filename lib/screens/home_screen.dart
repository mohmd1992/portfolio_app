import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/terminal_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, i\'am',
                style:
                    textTheme.headlineMedium?.copyWith(color: AppColors.textMuted,fontSize: 14)),
            const SizedBox(height: 4),
            Text('Mohammad Saleem Omar Samour', style: textTheme.displayLarge),
            const SizedBox(height: 4),
            Text('Senior Flutter Developer',
                style: textTheme.headlineMedium
                    ?.copyWith(color: AppColors.accent, fontSize: 18)),
            const SizedBox(height: 28),
            TerminalBlock(
              promptLabel: 'about.dart',
              child: RichText(
                text: TextSpan(
                  style: textTheme.headlineMedium?.copyWith(fontSize: 14),
                  children: [
                    TextSpan(
                        text: 'class ',
                        style: TextStyle(color: AppColors.accentSecondary)),
                    const TextSpan(text: 'Developer {\n  '),
                    TextSpan(
                        text: 'String ',
                        style: TextStyle(color: AppColors.accentSecondary)),
                    const TextSpan(
                        text:
                            'bio = "I build production-ready\n mobile apps with Flutter,\n turning complex workflows \n into fast, reliable,\n and intuitive experiences."}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Developer Stats',
              style: textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                    child: _StatBlock(value: '8', label: 'Apps Delivered')),
                SizedBox(width: 12),
                Expanded(
                    child:
                        _StatBlock(value: '+5', label: 'Years of experience')),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Featured Projects',
              style: textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                    child: _StatBlock(
                        value: ' DeliverIt ', label: 'Delivery Platform')),
                SizedBox(width: 12),
                Expanded(
                    child: _StatBlock(
                        value: 'Dr.Service ', label: 'Delivery Platform')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String value;
  final String label;

  const _StatBlock({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          Text(value,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: AppColors.accent, fontSize: 20)),
          const SizedBox(height: 4),
          Text(label,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 14),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
