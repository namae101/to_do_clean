// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../features/core/presentation/pages/dashboard.dart' as _i1;
import '../features/todo/presentation/pages/todo_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DashboardPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    TodoPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TodoPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(DashboardPageRoute.name, path: '/', children: [
          _i3.RouteConfig(TodoPageRoute.name,
              path: 'todo', parent: DashboardPageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardPageRoute extends _i3.PageRouteInfo<void> {
  const DashboardPageRoute({List<_i3.PageRouteInfo>? children})
      : super(DashboardPageRoute.name, path: '/', initialChildren: children);

  static const String name = 'DashboardPageRoute';
}

/// generated route for
/// [_i2.TodoPage]
class TodoPageRoute extends _i3.PageRouteInfo<void> {
  const TodoPageRoute() : super(TodoPageRoute.name, path: 'todo');

  static const String name = 'TodoPageRoute';
}
