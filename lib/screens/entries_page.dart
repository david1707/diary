import 'package:flutter/material.dart';

class EntriesPage extends StatefulWidget {
  const EntriesPage({super.key});

  @override
  State<EntriesPage> createState() => _EntriesPageState();
}

class _EntriesPageState extends State<EntriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My diary'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                // TODO: Refresh Entries
              },
              child: const Icon(Icons.refresh),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
