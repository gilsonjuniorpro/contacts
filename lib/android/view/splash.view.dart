import 'package:flutter/material.dart';
import 'home.view.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Icon(
            Icons.fingerprint,
            size: 72,
            color: Theme.of(context).accentColor,
          ),
          Text(
            "My Contacts",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).accentColor,
            )
          ),
          FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                );
              },
            child: Icon(
              Icons.arrow_forward,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      )
    );
  }
}
