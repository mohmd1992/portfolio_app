import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// بطاقة على شكل نافذة Terminal — تعرض معلومة زي سطر أوامر.
/// هاي هوية بصرية متكررة بالتطبيق كامل بدل الكروت التقليدية.
class TerminalBlock extends StatelessWidget {
  final String promptLabel; // مثلا: whoami, skills --list
  final Widget child;
  const TerminalBlock({super.key, required this.promptLabel, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.divider)),
            ),
            child: Row(
              children: [
                _dot(const Color(0xFFFF6B6B)),
                const SizedBox(width: 6),
                _dot(const Color(0xFFFFD166)),
                const SizedBox(width: 6),
                _dot(AppColors.accentSecondary),
                const SizedBox(width: 12),
                Text(
                  promptLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }

  Widget _dot(Color c) => Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(color: c, shape: BoxShape.circle),
      );
}
