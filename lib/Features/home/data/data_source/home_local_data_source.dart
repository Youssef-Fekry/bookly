import 'package:bokly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bokly_app/constans.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewstBooks();
}

class HomeLocalDataSourceImp extends HomeRemoteDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewstBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
