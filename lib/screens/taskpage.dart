import 'package:flutter/material.dart';
import 'package:what_todo/widgets.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 6.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Image(
                          image:
                              AssetImage('assets/images/back_arrow_icon.png'),
                        ),
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter task Title...",
                          border: InputBorder.none),
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF211551)),
                    )),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Description for the task...",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                  ),
                ),
              ),
              TodoWidget(
                text: "Create first Task",
                isDone: true,
              ),
              TodoWidget(isDone: true),
              TodoWidget(isDone: false),
              TodoWidget(isDone: false),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        backgroundColor: const Color(0xFFFE3577),
        onPressed: () {
          print('hello');
        },
      ),
    );
  }
}
