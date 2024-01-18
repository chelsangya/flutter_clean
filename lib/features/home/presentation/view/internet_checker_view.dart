import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/core/common/provider/is_network_provider.dart';

class InternetCheckerView extends StatelessWidget {
  const InternetCheckerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Check'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final connectivityStatus =
              ref.watch(connectivityStatusProvider);
          if (connectivityStatus == ConnectivityStatus.isConnected) {
            return const Text(
              'Internet is Connected',
              style: TextStyle(fontSize: 24),
            );
          } else{
            return const Text(
              'Internet is Disconnected',
              style: TextStyle(fontSize: 24),
            );
          }
          
        }),
      ),
    );
  }
}
