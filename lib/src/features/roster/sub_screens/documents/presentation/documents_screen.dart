import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DocumentsScreen extends StatelessWidget {
  final int patientId;

  const DocumentsScreen({super.key, @pathParam required this.patientId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
        leading: const AutoLeadingButton(),
      ),
      body: Center(
        child: Text('Document id $patientId'),
      ),
    );
  }
}
