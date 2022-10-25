// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:my_app/pages/validationScreen.dart';

class paymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => validationScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/clickToPay.jpg"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
