import 'package:dartz/dartz.dart';
import 'package:to_do_clean/features/core/data/models/failure.dart';
import 'package:to_do_clean/features/core/domain/usecases/usecase.dart';
import 'package:to_do_clean/features/todo/domain/entities/todo.dart';
import 'package:to_do_clean/features/todo/domain/repositories/todo_repo.dart';

class GetTodoListUseCase extends UseCase<List<TodoEntity>, void> {
  GetTodoListUseCase(this._todoRepository);
  final TodoRepository _todoRepository;
  @override
  Future<Either<Failure, List<TodoEntity>>> call(void params) async {
    try {
      return _todoRepository.getTodoList();
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
