import 'package:flutter/material.dart';
import 'package:well_com_rea/models/HospitalData.dart';
import 'package:well_com_rea/views/AccueilView.dart';

class FirstPageView extends StatelessWidget {
  final HospitalData data;

  FirstPageView({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Bienvenue au CHSF'),
        ),
        backgroundColor: Colors.green.shade900,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccueilView()),
              );
            },
          ),
          // Ajouter le bouton avec la liste déroulante
          _buildLanguageDropdownButton(),
        ],
      ),
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              data.imagePath,
              height: 300,
              width: 600,
            ),
            SizedBox(height: 100, width: 30),
            Text(
              'Heure : ${DateTime.now().toLocal()}',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 10),
            Text(
              'Pays : ${data.country}',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 10),
            Text(
              data.welcomeMessage,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Fonction pour construire le bouton avec la liste déroulante
  Widget _buildLanguageDropdownButton() {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        // Mettez ici la logique pour changer la langue en fonction de la sélection
        // (vous pouvez utiliser une bibliothèque de gestion des traductions comme 'intl')
        // Exemple : changeLanguage(value);
      },
      itemBuilder: (BuildContext context) {
        // Remplacez cette liste par vos langues et drapeaux respectifs
        return ['Français 🇫🇷', 'English 🇬🇧', 'Español 🇪🇸'].map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
