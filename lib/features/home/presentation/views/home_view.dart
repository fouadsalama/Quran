import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/styles.dart';
import 'widgets/custom_app_bar_ico.dart';
import 'widgets/home_view_body.dart';
import 'widgets/menu_drawer.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<String> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff888888)),
        title: const Center(
          child: Text(
            'Quran',
            style: Styles.textStyle20,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const CustomAppBarIcons(
              image: 'assets/images/menu.png',
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          IconButton(
            icon: const CustomAppBarIcons(
              image: 'assets/images/search.png',
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(data),
              );
            },
          )
        ],
      ),
      body: const HomeViewBody(),
      drawer: const MenuDrawer(),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<String> data;

  CustomSearchDelegate(this.data);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSearchResults(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildSearchResults(query);
  }

  Widget buildSearchResults(String query) {
    final List<String> filteredResults = data
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredResults[index]),
          onTap: () {
            close(context, filteredResults[index]);
          },
        );
      },
    );
  }
}
