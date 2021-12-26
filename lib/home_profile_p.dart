import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pantisosialciparay/edit_profilep.dart';
import 'package:pantisosialciparay/login.dart';

class HomeProfileP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeProfilePState();
  }
}

class HomeProfilePState extends State<HomeProfileP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
        title: Text('Profile'),

    ),
    body :
      Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          getprofilePCard(),
          Container(
            margin: EdgeInsets.all(20),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EditProfileP()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    title: Text("Edit profile"),
                    leading: Icon(
                      Icons.settings,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text("Untuk Bantuan Silahkan Hubungi nomer tersebut"),
                              title: Text("Bantuan"),
                            );
                          });
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    title: Text("Bantuan"),
                    leading: Icon(
                      Icons.help,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text("version bla bla bla"),
                              title: Text("info version"),
                            );
                          });
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    title: Text("Info Version"),
                    leading: Icon(
                      Icons.info,
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushAndRemoveUntil
                        (MaterialPageRoute(
                          builder: (context) => HomeScreen()),
                              (Route<dynamic> route) => false);
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    title: Text("Logout"),
                    leading: Icon(
                      Icons.exit_to_app,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    )
    );
  }

  getprofilePCard() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Material(
                  elevation: 10.0,
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "lib/assets/logo1.png",
                      width: 50,
                      height: 50,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Nama User",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
