import 'package:flutter_clean_architectur/core/utils/typedef.dart';

abstract class UseCaseWiththowParams<Type> {
  const UseCaseWiththowParams();
  ResultFuture<Type> call();
}
