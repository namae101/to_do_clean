import 'package:auto_route/annotations.dart';
import 'package:to_do_clean/features/core/presentation/pages/dashboard.dart';
import 'package:to_do_clean/features/todo/presentation/pages/todo_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: DashboardPage,
      initial: true,
      path: '/',
      children: <AutoRoute>[
        AutoRoute(
          page: TodoPage,
          path: 'todo',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
