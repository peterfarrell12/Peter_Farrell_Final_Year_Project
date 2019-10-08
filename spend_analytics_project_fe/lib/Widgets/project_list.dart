import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';
import '../Screens/project_home_screen.dart';

class ProjectList extends StatelessWidget {

  final List<Project> projects;
  final Function deletePj;

  ProjectList(this.projects, this.deletePj);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 5,
        child: projects.isEmpty 
        ? Center(child: Text(
          "No Projects Added Yet"
        ),)
        : ListView.builder(
          itemCount: projects.length,
          itemBuilder: (ctx, index){
            return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: 
      BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: Colors.teal))

      ),
      child: Card(
        elevation: 5,
              child: ListTile(
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProjectHome()),
  );
                },
                hoverColor: Colors.teal,
              ),
              IconButton(
                icon: Icon(Icons.file_download),
                onPressed: () {},
                hoverColor: Colors.teal,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  deletePj(projects[index].id);
                },
                hoverColor: Colors.teal,
              )
            ],
          ),
          title: Text(
            '${projects[index].title}',
          ),
          subtitle: Text(
            "Created On:  ${projects[index].date}  By ${projects[index].user}", style: TextStyle(),
          ),
        ),
      ),
    );
          },
        )
      ),
      
    );
  }
}