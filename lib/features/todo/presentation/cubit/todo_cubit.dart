import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_clean/features/core/domain/entities/entities.dart';
import 'package:to_do_clean/features/core/domain/repositories/repositories.dart';
import 'package:to_do_clean/features/core/domain/usecases/usecases.dart';

part 'todo_cubit.freezed.dart';
part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit(
    this._addToDoUseCase,
    this._deleteTodoUseCase,
    this._getTodoListUseCase,
    this._updateTodoUseCase,
  ) : super(const TodoState.initial());

  final AddToDoUseCase _addToDoUseCase;
  final DeleteTodoUseCase _deleteTodoUseCase;
  final GetTodoListUseCase _getTodoListUseCase;
  final UpdateTodoUseCase _updateTodoUseCase;

  Future<void> fetchTodoList() async {
    emit(const TodoState.fetchingTodo());
    try {
      final result = await _getTodoListUseCase(null);

      result.fold(
        (l) => emit(const TodoState.fetchFailure()),
        (r) => emit(TodoState.fetchingSuccess(todoList: r)),
      );
    } catch (e) {
      emit(const TodoState.fetchFailure());
    }
  }

  Future<void> addTodo({required String title}) async {
    emit(const TodoState.processingTodo());
    try {
      final result = await _addToDoUseCase(CreateTodoParams(title: title));
      result.fold(
        (l) => emit(const TodoState.processFailure()),
        (r) => emit(const TodoState.processSuccess()),
      );
      await fetchTodoList();
    } catch (e) {
      emit(const TodoState.processFailure());
    }
  }

  Future<void> updateTodo({
    required String title,
    required String id,
    required bool completed,
  }) async {
    emit(const TodoState.processingTodo());
    try {
      final result = await _updateTodoUseCase(
        UpdateTodoParams(
          id: id,
          title: title,
          completed: completed,
        ),
      );
      result.fold(
        (l) => emit(const TodoState.processFailure()),
        (r) => emit(const TodoState.processSuccess()),
      );
      await fetchTodoList();
    } catch (e) {
      emit(const TodoState.processFailure());
    }
  }

  Future<void> deleteTodo({required String id}) async {
    emit(const TodoState.processingTodo());
    try {
      final result = await _deleteTodoUseCase(id);
      result.fold(
        (l) => emit(const TodoState.processFailure()),
        (r) => emit(const TodoState.processSuccess()),
      );
      await fetchTodoList();
    } catch (e) {
      emit(const TodoState.processFailure());
    }
  }
}
