import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  Icon fieldIcon;
  String hintText;
  final TextEditingController textEditingController;
  bool hidden;

  InputField(this.fieldIcon, this.hintText, this.textEditingController,
      {Key? key, this.hidden = false}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.indigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.fieldIcon,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
              width: 200,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: TextField(
                    obscureText: widget.hidden,
                    //TestField
                    controller: widget.textEditingController,
                    decoration: InputDecoration(
                      errorText: _validate ? "Username" : null,
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}