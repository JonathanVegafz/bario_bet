import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputText extends StatefulWidget {

  String label;
  TextInputType type;
  TextEditingController controller = TextEditingController();
  InputText(this.label, this.type, { Key? key }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  // controllerCorreo = TextEditingController();

  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: widget.controller,
          keyboardType: widget.type,
          decoration: InputDecoration(
            border: InputBorder.none,
            
            hintText: widget.label,
            
          ),
        ),
      ),
    );
  }
}