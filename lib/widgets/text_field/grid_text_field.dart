import 'package:flutter/material.dart';

class GridTextFormField extends StatefulWidget {
  double width;
  double maxWidth;
  String? initalVal;
  final bool isPassword;
  bool isShowPassword;
  void Function(String? str)? onSave; 
  void Function(String? str)? onChange;
  String? Function(String? str)? validate; 
  String hint;
  String label;
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

  GridTextFormField({
    this.maxWidth= double.infinity,
    this.width= 50,
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
  }) : isShowPassword = isPassword
      ? true
      : false; //:controller = controller ?? new TextEditingController();

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<GridTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      constraints: BoxConstraints(
        minWidth: widget.width, maxWidth: 150.0),
      child:  TextFormField(
        enabled: widget.isEnable,
        decoration: InputDecoration(
          //helperText: '',
          isDense: widget.isDense,
          contentPadding: const EdgeInsets.fromLTRB(5, 0, 10, 5),
          counterText: "",
          hintText: widget.hint,
          labelText: widget.label,
          focusColor: Theme.of(context).primaryColor,
          // border: OutlineInputBorder(
          //   //borderRadius: BorderRadius.all(Radius.circular(0.0)),
         //  ),
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
        controller: widget.controller,
      ),

    );
  }
}



// class TextFormFieldWidget extends StatefulWidget {
//
//   String initalVal;
//   bool isPassword;
//   String hint;
//   String label;
//   OnSaveFunctionType? onSave;
//   OnChangeFunctionType? onChange;
//   OnValidateFunctionType? validate;
//   TextInputType textInputType;
//   TextCapitalization textCapitalization;
//   int minLine ;
//   int maxLines;
//   int? maxLength;
//   bool isExpend ;
//   bool isEnable ;
//   double height ;
//   bool? isDense;
//   Color? errorColor;
//
//
//   TextFormFieldWidget({
//     this.initalVal = "",
//     this.isPassword = false,
//     this.isEnable = true,
//     this.hint = "",
//     this.label = "",
//     this.onSave,
//     this.validate,
//     this.onChange ,
//     this.textInputType = TextInputType.text,
//     this.textCapitalization = TextCapitalization.none,
//     this.minLine = 1,
//     this.maxLines = 1,
//     this.maxLength,
//     this.isExpend = false,
//     this.height =30.0,
//     this.isDense=true,
//     this.errorColor = Colors.red,
//   });
//
//   @override
//   _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
// }
//
// class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // height: widget.height,
//       child: TextFormField(
//         enabled: widget.isEnable,
//         decoration: InputDecoration(
//           //helperText: '',
//           isDense: widget.isDense,
//           // contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
//           contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//           hintText: widget.hint,
//           labelText: widget.label,
//           focusColor: Theme.of(context).primaryColor,
//           suffixIcon: widget.isPassword ? TextButton.icon(
//             label: SizedBox.shrink(),
//             icon: Icon(Icons.remove_red_eye, color: AppColors.iconColor,),
//             onPressed: (){
//               setState(() {
//                 widget.isPassword = widget.isPassword ? false : true;
//               });
//             },
//           ): SizedBox.shrink(),
//           border: OutlineInputBorder(
//              borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//           errorStyle: TextStyle(
//             color: widget.errorColor, // Colors.red[400],
//             fontWeight: FontWeight.w400,
//             fontSize: 12,
//           ),
//         ),
//         expands: widget.isExpend,
//         textCapitalization: widget.textCapitalization,
//         keyboardType : widget.textInputType,
//         obscureText: widget.isPassword,
//         initialValue: widget.initalVal,
//         validator: widget.validate,
//         onChanged: widget.onChange,
//         maxLines: widget.maxLines,
//         minLines: widget.minLine,
//         maxLength: widget.maxLength,
//         onSaved: widget.onSave,
//       ),
//     );
//   }
// }
