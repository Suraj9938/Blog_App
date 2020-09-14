import 'package:blog_application/model/todo.dart';
import 'package:blog_application/widgets/todo_dismissible.dart';
import 'package:blog_application/widgets/todo_input.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> _todoList = [];

  void _addData(String name, String task, DateTime date) {
    final todoData = Todo(tName: name, taskToDo: task, Date: date);

    setState(() {
      _todoList.add(todoData);
    });
  }

  void _setTransValue(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return SingleChildScrollView(
            child: TodoInput(
              addTrans: _addData,
            ),
          );
        });
  }

  void _deleteTrans(String id) {
    setState(() {
      _todoList.retainWhere((trans) {
        return trans.id == id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue[400],
      body: TodoDismissible(
        todo: _todoList,
        deleteTodo: _deleteTrans,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 60, right: 10,),
        child: FloatingActionButton(
          backgroundColor: Colors.orange[400],
          child: Icon(Icons.add),
          onPressed: () {
            _setTransValue(context);
          },
        ),
      ),
    );
  }
}
