import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanis_task/core/utils/time_formatter.dart';
import 'package:zanis_task/modules/home/presentation/widgets/error_display_widget.dart';
import 'package:zanis_task/modules/home/presentation/controllers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeDTO = ref.watch(homeDTOProvider);
    final usbStream = ref.watch(usbStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Communication Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Current Time',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              homeDTO.when(
                data: (data) => Column(
                  children: [
                    Text(
                      TimeFormatter.formatTime(data.currentTime),
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => ref.refresh(homeDTOProvider),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Update Time'),
                    ),
                  ],
                ),
                loading: () => const CircularProgressIndicator(),
                error: (err, stack) => ErrorDisplayWidget(
                  error: err,
                  stackTrace: stack,
                  ref: ref,
                  providerToRefresh: homeDTOProvider,
                  contextMessage: 'Time fetch failed',
                ),
              ),
              const SizedBox(height: 32),
              // USB data stream
              const Text(
                'Simulated USB-C Data Stream',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              usbStream.when(
                data: (usbData) => Text(
                  usbData,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                loading: () => const Text(
                  'Waiting for USB data...',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                error: (err, stack) => ErrorDisplayWidget(
                  error: err,
                  stackTrace: stack,
                  ref: ref,
                  providerToRefresh: usbStreamProvider,
                  contextMessage: 'USB stream failed',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
