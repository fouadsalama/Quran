import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search Surah...',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
