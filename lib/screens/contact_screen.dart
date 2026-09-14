import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_theme.dart';
import '../widgets/terminal_block.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  static const links = [
    {
      'label': 'email',
      'value': 'mohmd_saleem1992@yahoo.com',
      'icon': Icons.mail_outline,
      'url': 'mailto:mohmd_saleem1992@yahoo.com',
    },
    {
      'label': 'linkedin',
      'value': 'linkedin.com/in/mohmd-saleem-777140162',
      'icon': Icons.business_center,
      'url': 'https://www.linkedin.com/in/mohmd-saleem-777140162/',
    },
    // {
    //   'label': 'github',
    //   'value': 'github.com/username',
    //   'icon': Icons.code,
    //   'url': 'https://github.com/username',
    // },
    {
      'label': 'whatsapp',
      'value': '+962 788033225',
      'icon': Icons.chat_bubble_outline,
      'url': 'https://wa.me/962788033225',
    },
    {
      'label': 'phone',
      'value': '+962 788033225',
      'icon': Icons.phone,
      'url': 'tel:+962788033225',
    },
  ];

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri))
      await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 100),
        children: [
          Text('Contact with me ',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(fontSize: 26)),
          const SizedBox(height: 4),
          Text('# import contact from "everywhere"',
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          TerminalBlock(
            promptLabel: 'contact.dart',
            child: Column(
              children: links
                  .map((l) => InkWell(
                        onTap: () => _open(l['url'] as String),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Icon(l['icon'] as IconData,
                                  color: AppColors.accent, size: 20),
                              const SizedBox(width: 12),
                              Text('${l['label']}: ',
                                  style:
                                      Theme.of(context).textTheme.labelLarge),
                              Expanded(
                                child: Text(
                                  l['value'] as String,
                                  style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const Icon(Icons.arrow_outward,
                                  size: 15, color: AppColors.textMuted),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
