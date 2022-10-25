// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/theme_helper.dart';
import 'package:my_app/pages/paymentPage.dart';
import 'package:my_app/pages/widgets/header_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import 'profile_page.dart';

class sonedeVerif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _sonedeVerif();
  }
}

class _sonedeVerif extends State<sonedeVerif> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              child: HeaderWidget(150, false, Icons.payment),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 60, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  GestureDetector(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 5, color: Colors.white),
                            color: Colors.white,
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: const Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Image.asset('assets/sonede1.png',
                              width: 85, height: 85, fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            "SONEDE | 0502",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Référence de facture :  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                text: '   875694255  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[600]),
                              )
                            ])),
                        SizedBox(height: 20),
                        RichText(
                            text: TextSpan(
                                text: 'Montant de facture :  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                text: "   50.000 " + "dt",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[600]),
                              )
                            ])),
                        SizedBox(height: 20),
                        Text(
                          "Frais poste :   1.000 dt",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.red),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Frais bancaire :   0.000 dt",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.red),
                        ),
                        SizedBox(height: 20),
                        RichText(
                            text: TextSpan(
                                text: 'Montant à payer :  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                text: "   51.000 " + "dt",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[600]),
                              )
                            ])),
                        SizedBox(height: 20),
                        RichText(
                            text: TextSpan(
                                text: 'Numéro de téléphone :  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                text: "   53466390",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[600]),
                              )
                            ])),
                        SizedBox(height: 45),
                        Center(
                          child: Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 5, 40, 10),
                                child: Text(
                                  "Payer".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                   Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => paymentPage()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
