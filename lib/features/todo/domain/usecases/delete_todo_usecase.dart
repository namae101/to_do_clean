import 'package:dartz/dartz.dart';
import 'package:to_do_clean/features/core/data/models/failure.dart';
import 'package:to_do_clean/features/core/domain/usecases/usecase.dart';
import 'package:to_do_clean/features/todo/domain/repositories/todo_repo.dart';

class DeleteTodoUseCase extends UseCase<void, String> {
  DeleteTodoUseCase(this._todoRepository);
  final TodoRepository _todoRepository;
  @override
  Future<Either<Failure, void>> call(String params) async {
    try {
      return _todoRepository.deleteTodo(params);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
