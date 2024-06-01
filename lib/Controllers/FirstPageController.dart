import 'package:flutter/material.dart';
import 'package:well_com_rea/views/FirstPageView.dart';
import 'package:well_com_rea/views/PrimoView.dart';
import 'package:well_com_rea/models/HospitalData.dart';


class FirstPageController {
  final HospitalData data;

  FirstPageController({required this.data});

  Widget buildView() {
    return FirstPageView(data: data);
  }
}

void main() {
  HospitalData hospitalData = HospitalData(
    imagePath: 'images/Hosto.png',
    welcomeMessage: 'Bienvenue dans notre unité de réanimation!',
    country: 'France',
  );

  FirstPageController controller = FirstPageController(data: hospitalData);

  /*runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: controller.buildView(),
  ));*/

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PrimoView(), // PrimoView comme page d'accueil
  ));
}
