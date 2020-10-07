import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';
import 'edit-contact.view.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C5603AQFC9OVbWQCqNQ/profile-displayphoto-shrink_400_400/0?e=1607558400&v=beta&t=kN3zf1PCf1WhBNkCW3tLCDbGnBc96frKj_9A9eQrJ3c"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Gilson Junior",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "+1 999 999-9999",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "gilsonjuniorpro@gmail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                  onPressed: (){},
                  color: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.phone,
                    color: Theme.of(context).accentColor
                  ),
                padding: EdgeInsets.all(10),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: (){},
                color: Theme.of(context).primaryColor,
                child: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor
                ),
                padding: EdgeInsets.all(10),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
              FlatButton(
                onPressed: (){},
                color: Theme.of(context).primaryColor,
                child: Icon(
                    Icons.camera_enhance,
                    color: Theme.of(context).accentColor
                ),
                padding: EdgeInsets.all(10),
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Address",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "36 King Street",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Toronto, ON M5C 1E5, Canadá",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: (){},
              child: Icon(
                Icons.pin_drop,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditContactView(
                model: ContactModel(
                  id: "1",
                  name: "Gilson Junior",
                  email: "gilsonjuniorpro@gmail.com",
                  phone: "+1 999 999-9999",
                ),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.edit,
          color: Theme.of(context).accentColor,
        ),
      ),

    );
  }
}
