import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../Widgets/new_project.dart';
import '../Widgets/project_list.dart';



class Projects extends StatefulWidget {
  
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  List<Project> _projects = [];


  List<Project> get _recentProjects {
    return _projects.where((pj){
      return pj.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
        );
    }).toList();
  }

  void _addNewProject(
    String pjTitle,
    String pjUser,
    bool pjIE,
    bool pjSC,
    bool pjR) {
      final newPJ = Project(
        title: pjTitle,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        invoiceExtractor: pjIE,
        reporter: pjR,
        spendClassifier: pjSC,
        user: pjUser
      );

      setState(() {
              _projects.add(newPJ);
            });
    }

    void _deleteProject(String id){
      setState(() {
              _projects.removeWhere((pj) => pj.id == id);
            });
    }


  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                              Container(
                  height: MediaQuery.of(context).size.height / 10,
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "My Projects",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),

                      FloatingActionButton.extended(
          backgroundColor: Colors.teal,
          heroTag: 'create-project',
          label: Text('Add New Project',style: TextStyle(color: Colors.white),),
          icon: Icon(Icons.add, color: Colors.white,),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return NewProject(_addNewProject);
                });
          },
        ),
                ]
              ),
                
              SizedBox(
                height: 15,
              ),

            ProjectList(_projects, _deleteProject)
        ])))]);

}}




