// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:to_do_clean/features/core/data/datasources/services.dart';
import 'package:to_do_clean/features/core/data/repositories/repositories.dart';
import 'package:to_do_clean/features/core/domain/repositories/repositories.dart';
import 'package:to_do_clean/features/core/domain/usecases/usecases.dart';
import 'package:to_do_clean/features/core/presentation/cubit/cubits.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  //Register Blocs and Cubit
  di.registerFactory<TodoCubit>(() => TodoCubit(di(), di(), di(), di()));
  //Register usecases

  di.registerLazySingleton(() => AddToDoUseCase(di()));
  di.registerLazySingleton(() => DeleteTodoUseCase(di()));
  di.registerLazySingleton(() => GetTodoListUseCase(di()));
  di.registerLazySingleton(() => GetTodoUseCase(di()));
  di.registerLazySingleton(() => UpdateTodoUseCase(di()));

  //Register Repositories
  di.registerFactory<TodoRepository>(() => TodoRepositoryImpl(di()));

  //Register DataSources
  di.registerLazySingleton<TodoService>(TodoServiceImp.new);
}
