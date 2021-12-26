import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pantisosialciparay/home_page.dart';
import 'package:pantisosialciparay/UI/input_field.dart';
import 'package:pantisosialciparay/register.dart';
import 'package:pantisosialciparay/service/authentication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Material App
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //StateFullWidget

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //Scaffold
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.lightBlueAccent,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(200.0)),
                color: const Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 70),
              child: Column(
                children: <Widget>[
                  Material(
                      elevation: 10.0,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "lib/assets/logo1.png",
                          width: 100,
                          height: 100,
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 40, right: 40),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child: Text(
                          "Panti sosial Rehabilitasi lanjut usia Ciparay Kabupaten Bandung")),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Form(
                      child: InputField(
                          //Calling inputField  class

                          const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          "Username",
                          usernameController),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Form(
                      child: InputField(
                          const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          "Password",
                          passwordController),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 200,
                    child: RaisedButton(
                      //Raised Button
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                      },
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 200,
                    child: RaisedButton(
                      //Raised Button
                      onPressed: () async {
                        User? user = await Authentication.signInWithGoogle(
                            context: context);
                        if (user != null) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        }
                      },
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: const Text(
                        "Login with Gmail",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 200,
                    child: RaisedButton(
                      //Raised Button
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Register()));
                      },
                      color: Colors.indigo,
                      textColor: Colors.white,
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
