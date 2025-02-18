import 'package:flutter_clean_architectur/core/errors/failure.dart';

class ApiFailture extends Failure {
  final int statusCode;

  const ApiFailture({this.statusCode = -1, required super.message});

  @override
  List<Object> get props => [
        message,
        statusCode,
      ];

  @override
  String get errorMessage => '$statusCode Error: $message';
}
