import 'package:flutter/material.dart';
import '../models/project.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 32, 20, 100),
        children: [
          Text('Projects', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 26)),
          const SizedBox(height: 4),
          Text('# Featured projects', style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          ...projects.map((p) => ProjectCard(project: p)),
        ],
      ),
    );
  }
}
