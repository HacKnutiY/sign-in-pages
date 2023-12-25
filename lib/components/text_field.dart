import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MySignTextField extends StatelessWidget {
  String? _labelText;
  TextInputType? _type;
  String _prefixText = "";
  String? _helperText = "";
  int? _lengthLimit = 30;
  TextEditingController? _controller;

  MySignTextField(this._labelText, this._type, {helperText, controller}) {
    if (this._type == TextInputType.phone) {
      _prefixText = "+ 7 ";
      _lengthLimit = 10;
    }
    if (helperText != null) {
      _helperText = helperText;
    }
    if (controller != null) {
      this._controller = controller;
    }
  }

  Widget getHelperText(String? helperText, TextInputType? type) {
    if (type == TextInputType.number) {
      return MaterialButton(
        child: Text(
          "$helperText",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 0,
            color: Color(0xff3B59A8),
          ),
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        enableFeedback: false,
        onPressed: null,
        padding: EdgeInsets.all(0),
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextFormField(
          controller: _controller,
          keyboardType: _type,
          inputFormatters: [
            LengthLimitingTextInputFormatter(_lengthLimit),
          ],
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            //prefix style
            prefixText: "$_prefixText",
            prefixStyle: TextStyle(color: Colors.black),

            //label style
            label: Text("$_labelText"),
            labelStyle: TextStyle(color: Colors.grey[400]),

            //sufix style
/*            suffixIcon: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              enableFeedback: false,
              onPressed: null,
              icon: Icon(
                Icons.clear,
                size: 30,
                color: Colors.black,
              ),
            ),
*/
            //border style
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2, color: Colors.grey, //<-- SEE HERE
              ),
            ),
          )),
      getHelperText("$_helperText",
          _type), //Если поле для ввода кода на номер, товнизу появляется кнопка переотправки кода
    ]);
  }
}

class MyAddTextField extends StatelessWidget {
  TextInputType? _type;
  int? _maxLinesCount;
  String? _hintText;
  MyAddTextField({LinesCount = 1, type = TextInputType.text, hint = ""}) {
    this._maxLinesCount = LinesCount;
    this._type = type;
    this._hintText = hint;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      maxLines: _maxLinesCount,
      decoration: InputDecoration(
          hintText: "$_hintText",
          hintStyle: TextStyle(color: Colors.grey[400]),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6))),
    );
  }
}

class MyDateTextField extends StatelessWidget {
  //Контроллер
  TextEditingController datePickerController = TextEditingController();
  onTapFunction({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      firstDate: DateTime(2015),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: datePickerController,
      readOnly: true,
      onTap: () => onTapFunction(context: context),
      decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
          prefixIcon:
              Icon(Icons.calendar_today_outlined, color: Colors.grey[400]),
          hintStyle:
              TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400),
          hintText: "06/11/2023г",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6))),
    );
  }
}
