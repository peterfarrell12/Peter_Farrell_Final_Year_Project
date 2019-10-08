import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';

class NewProject extends StatefulWidget {
  final Function addPj;

  NewProject(this.addPj);
  @override
  _NewProjectState createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final _titleController = TextEditingController();
  final _userController = TextEditingController();
  bool _IE;
  bool _SP;
  bool _RE;

  void _submitData(){
    final enteredTitle = _titleController.text;
    final enteredUser = _userController.text;

    widget.addPj(
      enteredTitle,
      enteredUser,
      _IE,
      _SP,
      _RE
    );

    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
                    child: SingleChildScrollView(
                      child: AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Adding New Project'),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                          content: Column(
      children: <Widget>[
        FormBuilder(
          key: _fbKey,
          initialValue: {
            'date': DateTime.now(),
            'accept_terms': false,
          },
          autovalidate: true,
          child: Column(
            children: <Widget>[
              FormBuilderTextField(
                controller: _titleController,
                attribute: "title",
                decoration: InputDecoration(labelText: "Project Name"),
                validators: [
                  FormBuilderValidators.minLength(5),
                                              FormBuilderValidators.required(
            errorText:
                "You Must Enter a Project Name",
          ),
            
                ],
                onFieldSubmitted: (_) => _submitData(),
              ),
                            FormBuilderTextField(
                attribute: "owner",
                decoration: InputDecoration(labelText: "Project Owner"),
                validators: [
                  FormBuilderValidators.minLength(5),
                            FormBuilderValidators.required(
            errorText:
                "You Must Enter a Project Name",
          ),
                ],
              controller: _userController,
              onFieldSubmitted: (_) => _submitData(),
              ),
               FormBuilderCheckbox(
        attribute: 'invoice extractor',
        initialValue: false,
        onChanged: (input){
          _IE = input;
        },
        leadingInput: true,
        label: Text(
            "Invoice Extractor"),
      ),
                    FormBuilderCheckbox(
        attribute: 'spend classifier',
        initialValue: false,
        onChanged: (input){
          _SP = input;
        },
        leadingInput: true,
        label: Text(
            "Spend Classifier"),
      ),
                    FormBuilderCheckbox(
        attribute: 'reporter',
        initialValue: false,
        onChanged: (input){
          _RE = input;
        },
        leadingInput: true,
        label: Text(
            "Reporter"),
      ),
              ],
          ),
        ),
             
        Row(
          children: <Widget>[
            MaterialButton(
              child: Text("Add Project",),
              onPressed: () {
                if (_fbKey.currentState.saveAndValidate()) {
                  _submitData();
;                }
              },
            ),
            MaterialButton(
              child: Text("Reset"),
              onPressed: () {
                _fbKey.currentState.reset();
              },
            ),
          ],
        )
      ],
    ),
                    ),
                  ));
  }
}