import "package:flutter/material.dart";
import "package:flutter_permisos_estados/presentation/providers/sensors/magnetometer_provider.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class MagnetometerScreen extends ConsumerWidget {
  const MagnetometerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final magnetometer$ = ref.watch(magnetometerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Magnetometer Screen'),
      ),
      body:  Center(
        child: magnetometer$.when(
          data: (value) => Text(
            value.x.toString(),
            style: const TextStyle(fontSize: 30),
          ), 
          error: (error, stackTrace) => Text ('$error'), 
          loading: () => const CircularProgressIndicator()
        ),
      ),
    );
  }
}