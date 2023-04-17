import 'package:flutter/material.dart';

import 'package:diary/models/entry.dart';
import 'package:diary/screens/entry/entry_page.dart.dart';
import 'package:diary/utils.dart/extensions.dart';

class EntriesPage extends StatefulWidget {
  const EntriesPage({super.key});

  @override
  State<EntriesPage> createState() => _EntriesPageState();
}

class _EntriesPageState extends State<EntriesPage> {
  List<Entry> entries = [
    Entry(
      title: 'Primera entrada',
      text: 'Açò és el text de la primera entrada',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Entry(
      title: 'Segona entrada',
      text: 'Açò és el text de la segona entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Entry(
      title: 'Tercera entrada',
      text: 'Açò és el text de la tercera entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Entry(
      title: 'Quarta entrada',
      text: 'Açò és el text de la quarta entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Entry(
      title: 'Primera entrada',
      text: 'Açò és el text de la primera entrada',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Entry(
      title: 'Segona entrada',
      text: 'Açò és el text de la segona entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Entry(
      title: 'Tercera entrada',
      text: 'Açò és el text de la tercera entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Entry(
      title: 'Quarta entrada',
      text: 'Açò és el text de la quarta entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Entry(
      title: 'Primera entrada',
      text: 'Açò és el text de la primera entrada',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Entry(
      title: 'Segona entrada',
      text: 'Açò és el text de la segona entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Entry(
      title: 'Tercera entrada',
      text: 'Açò és el text de la tercera entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Entry(
      title: 'Quarta entrada',
      text: 'Açò és el text de la quarta entrada',
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ];

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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Diary entries',
              style: TextStyle(
                fontSize: 40,
                color: Color(0xffFEFFFF),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EntryPage(),
                        ),
                      );
                    },
                    child: ListTile(
                      trailing: const Icon(
                        Icons.read_more,
                        color: Colors.white,
                      ),
                      title: Column(
                        children: [
                          Text(
                            entries[index].title,
                            style: const TextStyle(
                              color: Color(0xffFEFFFF),
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            truncateString(entries[index].text, 30),
                            style: const TextStyle(
                              color: Color(0xffFEFFFF),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
