import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Reusable widget to display errors with a retry button and detailed dialog.
class ErrorDisplayWidget extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  final WidgetRef ref;
  final ProviderBase providerToRefresh;
  final String contextMessage;

  const ErrorDisplayWidget({
    super.key,
    required this.error,
    this.stackTrace,
    required this.ref,
    required this.providerToRefresh,
    required this.contextMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Oops, $contextMessage!',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => _showErrorDialog(context),
              child: const Icon(
                Icons.info_outline,
                color: Colors.red,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade100,
            foregroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          onPressed: () => ref.refresh(providerToRefresh),
          child: const Text('Retry'),
        ),
      ],
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error Details'),
        content: SingleChildScrollView(
          child: Text('Error: $error\n\nStack Trace:\n$stackTrace'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
