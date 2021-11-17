import 'package:flutter/material.dart';
import 'package:gunma/components/text_field_container.dart';
import 'package:gunma/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: bGrey,
            ),
            hintText: hintText,
            
          ),
        ),
      ),
    );
  }
}
