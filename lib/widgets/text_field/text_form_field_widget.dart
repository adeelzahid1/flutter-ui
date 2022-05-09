import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatefulWidget {
  String? initalVal;
  final bool isPassword;
  bool isShowPassword;

  String hint;
  String label;
  void Function(String? str)? onSave;
  void Function(String? str)? onChange;
  String? Function(String? str)? validate;
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


  TextFormFieldWidget({
    this.controller,
    this.initalVal,
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
  }) : isShowPassword = isPassword
            ? true
            : false; //:controller = controller ?? new TextEditingController();

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: TextFormField(
        enabled: widget.isEnable,

        decoration: InputDecoration(
          //helperText: '',
          isDense: widget.isDense,
          contentPadding: const EdgeInsets.fromLTRB(14, 20, 10, 0),
          counterText: "",
          hintText: widget.hint,
          labelText: widget.label,
          focusColor: Theme.of(context).primaryColor,
          suffixIcon: widget.isPassword
              ? TextButton.icon(
                  label: const SizedBox.shrink(),
                  icon: widget.isShowPassword
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(
                        () => widget.isShowPassword = !widget.isShowPassword);
                  },
                )
              : null,
          border: const OutlineInputBorder(
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
