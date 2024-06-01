import 'package:flutter/material.dart';
import 'package:well_com_rea/views/FirstPageView.dart';
import 'package:well_com_rea/models/HospitalData.dart';
class PrimoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    HospitalData hospitalData = HospitalData(
      imagePath: 'images/Hosto.png',
      welcomeMessage: 'Bienvenue dans notre unité de réanimation!',
      country: 'France',
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FirstPageView(data: hospitalData), // Passer les données à FirstPageView
          ),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/Well.jpg',
                height: 500,
              ),
              SizedBox(height: 20),
              Text(
                'Cliquer pour passer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
