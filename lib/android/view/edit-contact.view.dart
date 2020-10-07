import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditContactView extends StatelessWidget {

  final ContactModel model;

  EditContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: model == null ? Text("New Contact") : Text("Edit Contact"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: model?.name,
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (val) {
                  model.phone = val;
                },
              ),
              TextFormField(
                initialValue: model?.email,
                onSaved: (val) {
                  model.email = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  onPressed: (){},
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


