import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes.gr.dart';

@RoutePage()
class RosterScreen extends StatelessWidget {
  const RosterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roster'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => context.router.push(DocumentsRoute(patientId: 1)), child: const Text('Go to Documents')),
      ),
    );
  }
}

@RoutePage()
class EmptyRoutePage extends AutoRouter {
  const EmptyRoutePage({super.key});
}
