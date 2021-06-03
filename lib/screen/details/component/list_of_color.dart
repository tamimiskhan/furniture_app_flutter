import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'colors_dots.dart';

class ListOfColor extends StatelessWidget {
  const ListOfColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillcolor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillcolor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillcolor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
