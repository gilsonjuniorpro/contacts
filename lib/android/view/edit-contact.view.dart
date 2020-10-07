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
    );
  }
}


