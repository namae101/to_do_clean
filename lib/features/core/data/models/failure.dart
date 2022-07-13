import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);

  @override
  String toString() => 'ServerFailure';
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);

  @override
  String toString() => 'DatabaseFailure';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(super.message);

  @override
  String toString() => 'ConnectionFailure';
}
