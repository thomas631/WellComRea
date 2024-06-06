import 'package:flutter/material.dart';
import 'package:well_com_rea/Views/PatientView.dart';
import 'package:well_com_rea/Views/SoignantView.dart';
/*import 'package:well_com_rea/views/enter_bed_number_page.dart';*/

class AccueilView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(
          child: Text('Page d\'Accueil'),
        ),
        backgroundColor: Colors.green.shade900,
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          direction: (size.width <= 700) ? Axis.vertical : Axis.horizontal,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientView()),
                );
              },
              icon: const Icon(
                Icons.person,
                size: 40, // Ajustez la taille de l'icône ici
              ), // Ajout de l'icône
              label: const Text(
                'Espace Patient',
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green.shade900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: const Size(350, 250),
              ),
            ),

            const SizedBox(width: 20), // Espace entre les boutons

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SoignantView()),
                );
              },
              icon: const Icon(
                Icons.medical_services,
                size: 40,
              ), // Ajout de l'icône
              label: const Text(
                'Espace Soignant',
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green.shade900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: const Size(350, 250),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
