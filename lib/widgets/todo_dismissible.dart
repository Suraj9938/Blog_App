import 'package:blog_application/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoDismissible extends StatefulWidget {
  final List<Todo> todo;
  final Function deleteTodo;

  TodoDismissible({this.todo, this.deleteTodo});

  @override
  _TodoDismissibleState createState() => _TodoDismissibleState();
}

class _TodoDismissibleState extends State<TodoDismissible> {
  @override
  Widget build(BuildContext context) {
    return widget.todo.isEmpty
        ? LayoutBuilder(
            builder: (context, ctx) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No To Do Task has been added",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "font1",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: ctx.maxHeight * 0.05,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/box.png",
                      height: ctx.maxHeight * 0.45,
                    ),
                  )
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: widget.todo.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(widget.todo.length),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  widget.deleteTodo(widget.todo[index].id);
                },
                confirmDismiss: (direction) {
                  return showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Are you sure?"),
                        content: Text("Do you want to remove item from the cart?"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                          ),
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          )
                        ],
                      ));
                },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 18),
                  child: Icon(
                    Icons.delete_forever,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                child: Card(
                  elevation: 6,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 4,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 3),
                    leading: CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).accentColor,
                      child: Image.asset(
                        "assets/images/image1.png",
                      ),
                    ),
                    title: Text(
                      widget.todo[index].tName,
                      style: TextStyle(
                        fontSize: 21,
                        fontFamily: "font1",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      widget.todo[index].taskToDo,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "font1",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 14),
                      child: Text(
                        DateFormat.yM().format(widget.todo[index].Date),
                      ),
                    ),
                  ),
                ),
              );
            });
  }
}
