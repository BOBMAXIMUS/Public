import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  final Function(String) onChange;
  final String hintText;
  DropDownMenu(this.hintText, this.onChange);
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  var _items = ['High', 'Low', "Fat", "Bold", "3.14"];
  var _selected = "High";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      onSaved: widget.onChange,
      decoration: InputDecoration(
        labelText: widget.hintText,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      value: _selected,
      items: _items
          .map((label) => DropdownMenuItem(
                child: Text(label),
                value: label,
              ))
          .toList(),
      onChanged: (value) {
        setState(() => _selected = value);
      },
    );
  }
}
