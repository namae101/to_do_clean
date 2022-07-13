import 'package:dartz/dartz.dart';
import 'package:to_do_clean/features/core/data/models/failure.dart';
import 'package:to_do_clean/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, TodoEntity>> getTodo(String id);
  Future<Either<Failure, List<TodoEntity>>> getTodoList();
  Future<Either<Failure, TodoEntity>> createTodo(CreateTodoParams todo);
  Future<Either<Failure, TodoEntity>> updateTodo(UpdateTodoParams todo);
  Future<Either<Failure, void>> deleteTodo(String id);
}

class CreateTodoParams {
  CreateTodoParams({required this.title});
  final String title;
}

class UpdateTodoParams {
  UpdateTodoParams({
    required this.id,
    required this.title,
    required this.completed,
  });

  final String id;
  final String title;
  final bool completed;
}
