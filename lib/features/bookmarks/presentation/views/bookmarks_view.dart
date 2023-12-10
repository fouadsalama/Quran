import 'package:flutter/material.dart';
import 'widgets/bookmark_view_body.dart';

class BookmarksView extends StatelessWidget {
  const BookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookmarkViewBody(),
    );
  }
}
