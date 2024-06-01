import 'package:flutter/material.dart';
import 'package:well_com_rea/Views/PatientView.dart';
import 'package:well_com_rea/Views/SoignantView.dart';
/*import 'package:well_com_rea/views/enter_bed_number_page.dart';*/

class AccueilView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child : Text('Page d\'Accueil'),
        ),
        backgroundColor: Colors.green.shade900,
      ),
      body: Container(
        color: Colors.green.shade200,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatientView()),
                  );

                },
                icon: Icon(
                  Icons.person,
                  size: 40, // Ajustez la taille de l'icône ici
                ), // Ajout de l'icône
                label: Text(
                  'Espace Patient',
                  style: TextStyle(fontSize: 30),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(350, 250),
                ),
              ),

              SizedBox(width: 20), // Espace entre les boutons

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SoignantView()),
                  );

                },
                icon: Icon(
                    Icons.medical_services,
                    size: 40,
                ), // Ajout de l'icône
                label: Text(
                  'Espace Soignant',
                  style: TextStyle(fontSize: 30),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(350, 250),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
