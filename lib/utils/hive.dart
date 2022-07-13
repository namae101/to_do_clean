import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_clean/features/todo/data/models/todo.dart';

Future<void> initHive() async {
  // Hive
  await Hive.initFlutter();
  Hive.registerAdapter(TodoHiveAdapter());
}
