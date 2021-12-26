import 'package:flutter/material.dart';
import 'package:pantisosialciparay/home_page.dart';
import 'package:pantisosialciparay/UI/input_field.dart';
import 'package:pantisosialciparay/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Material App
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  //StateFullWidget

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController noTeleponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
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
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Form(
                        child: InputField(
                            //Calling inputField  class

                            const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            "Email",
                            emailController),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Form(
                        child: InputField(
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            "Nama",
                            namaController),
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
                      margin: EdgeInsets.only(top: 10),
                      child: Form(
                        child: InputField(
                            //Calling inputField  class

                            const Icon(
                              Icons.add_call,
                              color: Colors.white,
                            ),
                            "No Telepon",
                            noTeleponController),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 150,
                      child: RaisedButton(
                        //Raised Button
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
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
            ),
          ],
        ),
      ),
    );
  }
}
