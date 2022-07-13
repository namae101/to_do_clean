import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_clean/features/core/presentation/cubit/cubits.dart';
import 'package:to_do_clean/features/todo/domain/entities/todo.dart';
import 'package:to_do_clean/features/todo/presentation/widget/add_update_todo_dialog.dart';
import 'package:to_do_clean/utils/di.dart';

class TodoPage extends StatelessWidget implements AutoRouteWrapper {
  const TodoPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => di<TodoCubit>()..fetchTodoList(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: BlocConsumer<TodoCubit, TodoState>(
        listener: (context, state) {},
        buildWhen: (previous, current) {
          return current.maybeMap(
            initial: (_) => true,
            fetchingSuccess: (_) => true,
            orElse: () => false,
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (value) => _buildProcessing(),
            fetchingSuccess: (value) => _buildTodoList(value.todoList),
            orElse: Container.new,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cubit = context.read<TodoCubit>();
          final todoTitle = await showDialog<String?>(
            context: context,
            builder: (context) => AddUpdateTodoDialog(),
          );
          if (todoTitle != null) {
            await cubit.addTodo(title: todoTitle);
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildProcessing() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildTodoList(List<TodoEntity> todoList) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        final todo = todoList[index];
        return ListTile(
          leading: Checkbox(
            value: todo.completed,
            onChanged: (value) => context.read<TodoCubit>().updateTodo(
                  title: todo.title,
                  id: todo.id,
                  completed: !todo.completed,
                ),
          ),
          title: Text(todo.title),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () async {
                  final cubit = context.read<TodoCubit>();
                  final todoTitle = await showDialog<String?>(
                    context: context,
                    builder: (context) => AddUpdateTodoDialog(text: todo.title),
                  );
                  if (todoTitle != null) {
                    await cubit.updateTodo(
                      id: todo.id,
                      title: todoTitle,
                      completed: todo.completed,
                    );
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  context.read<TodoCubit>().deleteTodo(id: todo.id);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
