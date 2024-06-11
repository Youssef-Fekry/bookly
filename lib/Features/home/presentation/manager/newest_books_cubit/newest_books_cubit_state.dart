part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksCubitState {}

final class NewestBooksCubitInitial extends NewestBooksCubitState {}

final class NewestBooksLoading extends NewestBooksCubitState {}

final class NewestBooksFailure extends NewestBooksCubitState {
  final String errorMessage;

  NewestBooksFailure(this.errorMessage);
}

final class NewestBooksSucsses extends NewestBooksCubitState {
  final List<BookEntity> books;

  NewestBooksSucsses(this.books);
}
