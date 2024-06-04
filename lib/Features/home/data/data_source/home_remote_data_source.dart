import 'package:bokly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/constans.dart';
import 'package:bokly_app/core/functions/save_data_box.dart';
import 'package:bokly_app/core/utils/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewstBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImp(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endpoints: 'volumes?Filtering=free-ebooks&q=secience');

    List<BookEntity> books = getbooklist(data);
    saveBoxData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewstBooks() async {
    var data = await apiService.get(
        endpoints: 'volumes?Filtering=free-ebooks&q=secience&sorting=newest');

    List<BookEntity> books = getbooklist(data);
    saveBoxData(books, kNewestBox);
    return books;
  }
}

List<BookEntity> getbooklist(Map<String, dynamic> data) {
  List<BookEntity> books = [];

  for (var bookmap in data['items']) {
    books.add(BookModel.fromJson(bookmap));
  }
  return books;
}
