import 'package:flutter/material.dart';

class  customCard extends StatelessWidget {
  final String labelHintText;
  final IconData? labelIcon;

  const customCard ({Key? key,
  required this.labelHintText,
  this.labelIcon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: labelHintText,
            prefixIcon: labelIcon !=null
              ?Icon(labelIcon):null,



          ),
        ),
      ],
    );
  }
}
