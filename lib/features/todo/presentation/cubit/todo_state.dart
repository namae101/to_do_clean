part of 'todo_cubit.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.fetchingTodo() = _FetchingTodo;
  const factory TodoState.fetchingSuccess({
    required List<TodoEntity> todoList,
  }) = _FetchingSuccess;
  const factory TodoState.fetchFailure() = _FetchFailure;

  const factory TodoState.processingTodo() = _AddingTodo;
  const factory TodoState.processSuccess() = _ProcessSuccess;
  const factory TodoState.processFailure() = _ProcessFailure;
}
