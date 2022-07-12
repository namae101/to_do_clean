import 'package:dartz/dartz.dart';
import 'package:to_do_clean/features/core/data/models/failure.dart';

abstract class UseCase<Type, Params> {
  const UseCase._();
  Future<Either<Failure, Type>> call(Params params);
}
