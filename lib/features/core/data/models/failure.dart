abstract class Failure {
  const Failure();
}

class ServerFailure extends Failure {
  @override
  String toString() => 'ServerFailure';
}
