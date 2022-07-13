import 'package:dartz/dartz.dart';
import 'package:to_do_clean/features/core/data/models/failure.dart';
import 'package:to_do_clean/features/todo/data/datasources/todo_service.dart';
import 'package:to_do_clean/features/todo/data/models/todo.dart';
import 'package:to_do_clean/features/todo/domain/entities/todo.dart';
import 'package:to_do_clean/features/todo/domain/repositories/todo_repo.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._todoService);

  final TodoService _todoService;

  @override
  Future<Either<Failure, TodoEntity>> createTodo(CreateTodoParams todo) async {
    try {
      final todoModel = await _todoService.createTodo(title: todo.title);
      return Right(todoModel.toEntity());
    } on Exception {
      return const Left(ServerFailure('Error creating todo'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTodo(String id) async {
    try {
      await _todoService.deleteTodo(id);
      return const Right(null);
    } on Exception {
      return const Left(ServerFailure('Error deleting todo'));
    }
  }

  @override
  Future<Either<Failure, TodoEntity>> getTodo(String id) async {
    try {
      final todoModel = await _todoService.getTodo(id);
      return Right(todoModel.toEntity());
    } on Exception {
      return const Left(ServerFailure('Error getting todo'));
    }
  }

  @override
  Future<Either<Failure, List<TodoEntity>>> getTodoList() async {
    try {
      final todoModels = await _todoService.getTodos();
      return Right(todoModels.map((e) => e.toEntity()).toList());
    } on Exception {
      return const Left(ServerFailure('Error getting todo list'));
    }
  }

  @override
  Future<Either<Failure, TodoEntity>> updateTodo(UpdateTodoParams todo) async {
    try {
      final todoModels = await _todoService.updateTodo(
        id: todo.id,
        title: todo.title,
        completed: todo.completed,
      );
      return Right(todoModels.toEntity());
    } on Exception {
      return const Left(ServerFailure('Error updating Todo'));
    }
  }
}
