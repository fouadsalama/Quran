import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/data/manger/surah_name_cubit/surah_name_cubit.dart';
import 'package:islamic_app/Features/surah/data/manger/cubit/surah_details_cubit.dart';
import 'package:islamic_app/core/widgets/custom_loading_indicator.dart';

import '../../../../../core/utils/app_routes.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
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
        GoRouter.of(context).pop();
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
    return BlocBuilder<SurahNameCubit, SurahNameState>(
      builder: (context, state) {
        if (state is SurahNameSuccess) {
          final filteredSurah = query.isEmpty
              ? state.surah
              : state.surah
                  .where((surah) =>
                      surah.englishName!
                          .toLowerCase()
                          .contains(query.toLowerCase()) ||
                      surah.name!.toLowerCase().contains(query.toLowerCase()))
                  .toList();
          return ListView.builder(
            itemCount: filteredSurah.length,
            itemBuilder: (context, index) {
              final surah = filteredSurah[index];
              return ListTile(
                subtitle: Text(surah.englishName!),
                title: Text(surah.name!),
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.kSurahDetailsView,
                    extra: state.surah[index],
                  );
                  BlocProvider.of<SurahDetailsCubit>(context).fetchSurahText(
                    number: state.surah[index].number!,
                  );
                },
              );
            },
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
