import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/Features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUsecase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUsecase featuredBooksUsecase;

  Future<void> fetchFeaturedBooks({int pageNumber=0}) async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUsecase.call(pageNumber);
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSucsses(books));
    });
  }
}
