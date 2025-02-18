import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  const Failure({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [
        message,
      ];

  String get errorMessage => 'Error: $message';
}
