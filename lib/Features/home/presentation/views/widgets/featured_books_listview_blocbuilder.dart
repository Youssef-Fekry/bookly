import 'package:bokly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bokly_app/Features/home/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatchFeaturesBooksBLocProvider extends StatelessWidget {
  const FeatchFeaturesBooksBLocProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucsses) {
          return  FeaturedBooksListView(
            books: state.books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
