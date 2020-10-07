// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';

List<Todo> todoFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  Todo({
    @required this.userId,
    @required this.id,
    @required this.title,
    this.completed,
  })  : assert(userId != null),
        assert(id != null),
        assert(title != null);

  int userId;
  int id;
  String title;
  bool completed;

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed'],
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };
}
