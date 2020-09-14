import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoInput extends StatefulWidget {
  final Function addTrans;

  TodoInput({this.addTrans});

  @override
  _TodoInputState createState() => _TodoInputState();
}

class _TodoInputState extends State<TodoInput> {
  final _task = FocusNode();
  final tNameController = new TextEditingController();
  final taskToDoController = new TextEditingController();
  DateTime date;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _task.dispose();
  }

  void _submittedData() {
    if (tNameController.text.isEmpty ||
        taskToDoController.text.isEmpty ||
        date == null) {
      return;
    } else {
      String tName = tNameController.text;
      String taskToDo = taskToDoController.text;
      widget.addTrans(tName, taskToDo, date);
      Navigator.pop(context);
    }
  }

  void userSelectedDate(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2021))
        .then((selectDate) {
      setState(() {
        date = selectDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Card(
        child: Container(
          height: 270,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: "font1",
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  controller: tNameController,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_task);
                  },
//                onSubmitted: (_) {
//                  _submittedData();
//                },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter the task to be done",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: "font1",
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  controller: taskToDoController,
                  focusNode: _task,
//                onSubmitted: (_) {
//                  _submittedData();
//                },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        date == null ? "Please choose a Date" : "Selected Date",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "font1",
                        ),
                      ),
                      date == null
                          ? FlatButton(
                              child: Icon(
                                Icons.alarm_add,
                              ),
                              onPressed: () => userSelectedDate(context),
                            )
                          : Text(
                              '${DateFormat.yMd().format(date).toString()}',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "font1",
                              ),
                            ),
                      //callDateTime(context),
                      /* userValue == false
                          ?
                          : "${MaterialLocalizations.of(context).formatTimeOfDay(_dateTime).toString()}",*/
                    ],
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "ADD TO DO",
                  ),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    _submittedData();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
