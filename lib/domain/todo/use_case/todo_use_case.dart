import 'package:flutter_basics/data/todo/model/todo_model.dart';
import 'package:flutter_basics/data/todo/remote/todo_remote_data_source.dart';

class TodoUseCase {
  Future<List<Todo>> call() async {
    var result = await TodoRemoteDataSourceImpl().getTodos();
    var todos = <Todo>[];

    result.fold(
      (failure) => print(failure.toString()),
      (list) => todos.addAll(list),
    );

    return Future.value(todos);
  }
}
