import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';
import '../Screens/project_home_screen.dart';
import '../Models/check.dart';
import 'package:circular_check_box/circular_check_box.dart';

class CheckList extends StatefulWidget {
  final List<Check> checks;

  CheckList(this.checks);

  @override
  _CheckListState createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: widget.checks.length,
            itemBuilder: (ctx, index) {
              return Container(
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.white,
                  checkColor: Colors.pinkAccent,
                  value: widget.checks[index].checked,
                  title: Text(
                    widget.checks[index].title,
                    style: TextStyle(color: Colors.grey),
                  ),
                  onChanged: (bool x) {
                    setState(() {
                                    widget.checks[index].checked  = !widget.checks[index].checked;     
                                        });
                  },
                ),
              );
            }),
      ),
    );
  }
}
