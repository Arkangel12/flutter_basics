import 'package:flutter/material.dart';
import 'package:flutter_basics/data/todo/model/todo_model.dart';
import 'package:flutter_basics/domain/todo/use_case/todo_use_case.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TodoUseCase todoUseCase = TodoUseCase(); //TODO remove this from FE [was for initial teaching purposes]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Todo>>(
        future: todoUseCase(),
        builder: (BuildContext context, AsyncSnapshot<List<Todo>> snapshot) {
          if (snapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.data.isEmpty) {
            return Center(child: Text('Something Happens'));
          }

          return ListView.separated(
            itemCount: snapshot.data.length,
            separatorBuilder: (_, __) => Divider(color: Colors.red),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text('${snapshot.data[index].id}'),
                title: Text('${snapshot.data[index].title}'),
                trailing: snapshot.data[index].completed
                    ? Icon(Icons.check)
                    : Icon(Icons.error),
              );
            },
          );
        },
      ),
    );
  }
}
