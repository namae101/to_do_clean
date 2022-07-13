import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_clean/features/todo/data/models/todo.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

abstract class TodoService {
  Future<TodoModel> getTodo(String id);
  Future<List<TodoModel>> getTodos();
  Future<TodoModel> createTodo({required String title});
  Future<TodoModel> updateTodo({
    required String id,
    required String title,
    required bool completed,
  });
  Future<void> deleteTodo(String id);
}

class TodoServiceImp implements TodoService {
  @override
  Future<TodoModel> createTodo({required String title}) async {
    const uuid = Uuid(options: {'grng': UuidUtil.cryptoRNG});
    final todo = TodoModel(
      id: uuid.v4(),
      title: title,
      completed: false,
    );
    try {
      final box = await Hive.openBox<TodoModel>('todos');
      await box.put(todo.id, todo);
      return todo;
    } catch (e) {
      throw Exception('Error creating todo');
    }
  }

  @override
  Future<void> deleteTodo(String id) async {
    try {
      final box = await Hive.openBox<TodoModel>('todos');
      await box.delete(id);
    } catch (e) {
      throw Exception('Error delete todo');
    }
  }

  @override
  Future<TodoModel> getTodo(String id) async {
    try {
      final box = await Hive.openBox<TodoModel>('todos');
      final model = box.get(id);
      if (model == null) {
        throw Exception('Todo not found');
      }
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TodoModel>> getTodos() async {
    try {
      final box = await Hive.openBox<TodoModel>('todos');
      final model = box.values.toList();
      return model;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TodoModel> updateTodo({
    required String id,
    required String title,
    required bool completed,
  }) async {
    try {
      final box = await Hive.openBox<TodoModel>('todos');
      final model = TodoModel(
        id: id,
        title: title,
        completed: completed,
      );
      await box.put(id, model);
      return model;
    } catch (e) {
      throw Exception('Error updating todo');
    }
  }
}
