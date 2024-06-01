import 'package:flutter/material.dart';
import 'package:well_com_rea/Views/DiscomfortView.dart';
import 'package:well_com_rea/Views/FeedView.dart';
import 'package:well_com_rea/Views/HealthView.dart';
import 'package:well_com_rea/Views/CareView.dart';
import 'package:well_com_rea/Views/RemovalView.dart';
import 'package:well_com_rea/Views/PainView.dart';
import 'package:well_com_rea/Views/InstalView.dart';
import 'package:well_com_rea/Models/patient_model.dart';



class PatientView extends StatelessWidget {


  PatientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Espace Patient'),
        ),
        backgroundColor: Colors.green.shade900,
      ),
      body: Container(
        color: Colors.green.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Douleur" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PainView()),
                      );
                    },
                    icon: Icon(Icons.sick), // Ajout de l'icône
                    label: Text(
                      'Douleur',
                      style: TextStyle(fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Ressenti Patient" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiscomfortView()),
                      );
                    },
                    icon: Icon(Icons.sentiment_satisfied), // Ajout de l'icône
                    label: Text(
                      'Ressenti',
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Bien-être" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CareView()),
                      );
                    },
                    icon: Icon(Icons.medical_services), // Ajout de l'icône
                    label: Text(
                      'Bien-être',
                      style: TextStyle(fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Hygiène" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HealthView()),
                      );
                    },
                    icon: Icon(Icons.cleaning_services), // Ajout de l'icône
                    label: Text(
                      'Hygiène',
                      style: TextStyle(fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Installation" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InstalView()),
                      );
                    },
                    icon: Icon(Icons.maps_ugc), // Ajout de l'icône
                    label: Text(
                      'Installation\nMobilisation',
                      style: TextStyle(fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FeedView()),
                      );
                    },
                    icon: Icon(Icons.food_bank), // Ajout de l'icône
                    label: Text(
                      'Alimentation',
                      style: TextStyle(fontSize: 25),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action lorsque le bouton "Elimination" est pressé
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RemovalView()),
                      );
                    },
                    icon: Icon(Icons.wc), // Ajout de l'icône
                    label: Text(
                        'Elimination',
                        style: TextStyle(fontSize: 25),
        ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(200, 200),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

