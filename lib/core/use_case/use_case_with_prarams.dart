import '../utils/typedef.dart';

abstract class UseCaseWithPrarams<Type, Params> {
  const UseCaseWithPrarams();
  ResultFuture<Type> call(Params params);
}
