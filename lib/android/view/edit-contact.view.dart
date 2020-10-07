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
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
                initialValue: model?.name,
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone",
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
                initialValue: model?.phone,
                onSaved: (val) {
                  model.phone = val;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
                initialValue: model?.email,
                onSaved: (val) {
                  model.email = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: FlatButton.icon(
                    onPressed: (){},
                    color: Theme.of(context).primaryColor,
                    icon: Icon(
                      Icons.save,
                      color: Theme.of(context).accentColor,
                    ),
                    label: Text(
                      "Save",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      )
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


