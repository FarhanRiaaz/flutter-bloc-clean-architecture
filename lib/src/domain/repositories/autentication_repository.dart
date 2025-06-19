import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean_architecture/src/comman/failure.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, void>> login(String email, String password);
}