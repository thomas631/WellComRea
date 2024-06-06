import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:well_com_rea/models/HospitalData.dart';
import 'package:well_com_rea/views/AccueilView.dart';

class FirstPageView extends StatelessWidget {
  final HospitalData data;

  const FirstPageView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarTextStyle: const TextStyle(
          color: Colors.white,
        ),
        foregroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Bienvenue au CHSF',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.green.shade900,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
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
      body: Center(
        child: SizedBox(
          width: size.width * 0.8,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  data.welcomeMessage,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                data.imagePath,
                height: 300,
                width: 600,
              ),
              Container(
                constraints: BoxConstraints(minHeight: 10),
                height: size.height * 0.002,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      'Heure : ${DateFormat('HH:mm dd/MM/yyyy').format(DateTime.now().toLocal())}',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: Text(
                      'Pays : ${data.country}',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 200),
                    height: 40,
                    width: size.width * 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccueilView(),
                          ),
                        );
                      },
                      child: const Text(
                        'Accueil',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
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
        return ['Français 🇫🇷', 'English 🇬🇧', 'Español 🇪🇸']
            .map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
