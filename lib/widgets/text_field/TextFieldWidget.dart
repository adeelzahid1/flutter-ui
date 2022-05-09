import 'package:flutter/material.dart';


class TextFieldWidget extends StatefulWidget {

  String initalVal;
  bool isPassword;
  String hint;
  String lable;
  void Function(String)? onSave;
  void Function(String?)? onChange;
  TextInputType textInputType;
  TextCapitalization textCapitalization;
  int minLine ;
  int maxLines;
  bool isExpend ;


  TextFieldWidget({
    this.initalVal = "",
    this.isPassword = false,
    this.hint = "",
    this.lable = "",
    required this.onSave,
    this.onChange ,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.minLine = 1,
    this.maxLines = 1,
    this.isExpend = false
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        helperText: ' ',
        hintText: widget.hint,
        labelText: widget.lable,
        focusColor: Theme.of(context).primaryColor,
        suffixIcon: widget.isPassword ? TextButton.icon(
          label: const SizedBox.shrink(),
          icon: const Icon(Icons.remove_red_eye, color: Colors.blue),
          onPressed: (){
            setState(() {
              widget.isPassword = widget.isPassword ? false : true;
            });
          },
        ): const SizedBox.shrink(),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      expands: widget.isExpend,
      textCapitalization: widget.textCapitalization,
      keyboardType : widget.textInputType,
      obscureText: widget.isPassword,
      onChanged: widget.onChange,
      maxLines: widget.maxLines,
      minLines: widget.minLine,


    );
  }
}
