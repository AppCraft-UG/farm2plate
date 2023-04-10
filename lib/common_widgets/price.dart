import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/widget_tree.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Price extends StatelessWidget {
  final String price;
  
  const Price(this.price);


  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset("assets/icons/cedi-sign-solid.svg"),
      Text(
        price,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
    ],);
  }
}
