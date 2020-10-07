import 'package:contacts/android/view/details.view.dart';
import 'package:contacts/android/view/edit-contact.view.dart';
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
                      "https://media-exp1.licdn.com/dms/image/C5603AQFC9OVbWQCqNQ/profile-displayphoto-shrink_400_400/0?e=1607558400&v=beta&t=kN3zf1PCf1WhBNkCW3tLCDbGnBc96frKj_9A9eQrJ3c"
                  ),
                ),
              ),
            ),
            title: Text("Gilson Junior"),
            subtitle: Text("+1 999 999-9999"),
            trailing: FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsView(),
                  ),
                );
              },
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              )
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditContactView(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}




