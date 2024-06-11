import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/Features/home/domain/usecases/fetch_newst_books.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubit( this.featuredBooksUsecase) : super(NewestBooksCubitInitial());

  final FetchNewestdBooksUseCase featuredBooksUsecase;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await featuredBooksUsecase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.message));
    }, (books) {
      emit(NewestBooksSucsses(books));
    });
  }
}
