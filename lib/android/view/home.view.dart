import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Contacts"),
        centerTitle: true,
        leading: FlatButton(
          onPressed: (){},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
        /*leading: RaisedButton(
          onPressed: (){},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),*/
        /*actions: [
          Text("1"),
          Text("2"),
        ],*/
      ),
      body: ListView(
        children: [
          ListTile(
            /*leading: Image.network(
              "https://baltaio.blob.core.windows.net/website/images%2Finstructor.jpg"
            ),*/
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://baltaio.blob.core.windows.net/website/images%2Finstructor.jpg"
                  ),
                ),
              ),
            ),
            title: Text("Andre Baltieri"),
            subtitle: Text("+55 99 99999-9999"),
            trailing: FlatButton(
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              )
            ),
          )
        ],
      ),
    );
  }
}




