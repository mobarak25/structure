import 'package:flutter/material.dart';

class CheckBoxB extends StatefulWidget {
  const CheckBoxB({
    super.key,
    required this.press,
    required this.label,
    required this.intialValue,
    this.setState = false,
  });
  final String? label;
  final bool intialValue;
  final bool setState;
  final Function press;

  @override
  State<CheckBoxB> createState() => _CheckBoxBState();
}

class _CheckBoxBState extends State<CheckBoxB> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    print('first time $_isChecked');
    setState(() {
      if (widget.setState) {
        _isChecked = false;
      } else {
        _isChecked = widget.intialValue;
      }
      print('second time $_isChecked ');
    });

    return Row(
      children: [
        SizedBox(
          width: 22,
          height: 22,
          child: Checkbox(
            splashRadius: 0,
            value: _isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue!;
              });
              widget.press(_isChecked);
            },
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
            widget.press(_isChecked);
          },
          child: Text(widget.label!),
        ),
      ],
    );
  }
}
