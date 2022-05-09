import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldPrefixIcon extends StatefulWidget {
  String? initalVal;
  final bool isPassword;
  bool isShowPassword;

  String hint;
  String label;
  void Function(String? str)? onSave; // void Function(String? str);
  void Function(String? str)? onChange; // void Function(String? str)
  String? Function(String? str)? validate;// String? Function(String? str)
  VoidCallback? onTap;
  TextInputType textInputType;
  TextCapitalization textCapitalization;
  int minLine;
  int maxLines;
  int? maxLength;
  bool isExpend;
  bool isEnable;
  TextEditingController? controller;
  Color? errorColor;
  bool? isDense;
  List<TextInputFormatter>? inputFormatters;
  bool readOnly;
  IconData? prefixIcon;
  Color? prefixIconColor;


  TextFormFieldPrefixIcon({
    this.controller = null,
    this.initalVal = null,
    this.isPassword = false,
    this.isEnable = true,
    this.hint = "",
    this.label = "",
    this.onSave,
    this.validate,
    this.onChange,
    this.onTap,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.minLine = 1,
    this.maxLines = 1,
    this.maxLength,
    this.isExpend = false,
    this.errorColor = Colors.red,
    this.isDense = true,
    this.inputFormatters,
    this.readOnly=false,
    this.prefixIcon,
    this.prefixIconColor,
  }) : this.isShowPassword = isPassword
      ? true
      : false; //:controller = controller ?? new TextEditingController();

  @override
  _TextFormFieldPrefixIconState createState() => _TextFormFieldPrefixIconState();
}

class _TextFormFieldPrefixIconState extends State<TextFormFieldPrefixIcon> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: TextFormField(
        enabled: widget.isEnable,

        decoration: InputDecoration(
          //helperText: '',
          prefixIcon: Icon(widget.prefixIcon, color: widget.prefixIconColor,),
          isDense: widget.isDense,
          contentPadding: EdgeInsets.fromLTRB(14, 20, 10, 0),
          counterText: "",
          hintText: widget.hint,
          labelText: widget.label,
          focusColor: Theme.of(context).primaryColor,
          suffixIcon: widget.isPassword
              ? TextButton.icon(
            label: SizedBox.shrink(),
            icon: widget.isShowPassword
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: () {
              setState(
                      () => widget.isShowPassword = !widget.isShowPassword);
            },
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          errorStyle: TextStyle(
            color: widget.errorColor, // Colors.red[400],
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
        expands: widget.isExpend,
        textCapitalization: widget.textCapitalization,
        keyboardType: widget.textInputType,
        obscureText: widget.isShowPassword,
        initialValue: widget.initalVal,
        validator: widget.validate,
        onChanged: widget.onChange,
        maxLines: widget.maxLines,
        minLines: widget.minLine,
        maxLength: widget.maxLength,
        onTap: widget.onTap,
        onSaved: widget.onSave,
        controller: widget.controller ?? null,
        inputFormatters: widget.inputFormatters,
        readOnly: widget.readOnly,
      ),
    );
  }
}
