import 'package:dartz/dartz.dart';
import 'package:flutter_basics/domain/failure.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_basics/data/constants.dart';
import 'package:flutter_basics/data/todo/model/todo_model.dart';

abstract class TodoRemoteDataSource {
  Future<Either<Failure, List<Todo>>> getTodos();
}

class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    var response = await http.get('$baseApiEndpoint/todo');

    if (response.statusCode == 200) {
      return Right(todoFromJson(response.body));
    }

    return Left(Failure(response.statusCode.toString()));
  }
}
