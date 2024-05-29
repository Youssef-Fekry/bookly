import 'package:bokly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<type, param> {
  Future<Either<Failure, type>> call([param param]);
}

class NoParam {}
