import 'package:flutter/material.dart';
import 'package:well_com_rea/Views/Soignant/CapGasView.dart';
import 'package:well_com_rea/Views/Soignant/CathAstView.dart';
import 'package:well_com_rea/Views/Soignant/DialyseView.dart';
import 'package:well_com_rea/Views/Soignant/DrThracView.dart';
import 'package:well_com_rea/Views/Soignant/EcmoView.dart';
import 'package:well_com_rea/Views/Soignant/EcoCarView.dart';
import 'package:well_com_rea/Views/Soignant/EcouvNaRectView.dart';
import 'package:well_com_rea/Views/Soignant/IntubationView.dart';
import 'package:well_com_rea/Views/Soignant/OptiflowView.dart';
import 'package:well_com_rea/Views/Soignant/PensEscView.dart';
import 'package:well_com_rea/Views/Soignant/PerfView.dart';
import 'package:well_com_rea/Views/Soignant/PonctLombView.dart';
import 'package:well_com_rea/Views/Soignant/PrelSangView.dart';
import 'package:well_com_rea/Views/Soignant/RadioView.dart';
import 'package:well_com_rea/Views/Soignant/SndNasogView.dart';
import 'package:well_com_rea/Views/Soignant/SndUriView.dart';
import 'package:well_com_rea/Views/Soignant/TracheotomieView.dart';
import 'package:well_com_rea/Views/Soignant/VacThrpView.dart';
import 'package:well_com_rea/Views/Soignant/VenArtView.dart';
import 'package:well_com_rea/Views/Soignant/AOTView.dart';
import 'package:well_com_rea/Views/Soignant/FibrClsView.dart';
import 'package:well_com_rea/Views/Soignant/FibrBrchView.dart';
import 'package:well_com_rea/Views/Soignant/VentilNoInvaView.dart';
import 'package:well_com_rea/Views/Soignant/VoieVeinView.dart';

class SoignantView extends StatefulWidget {
  @override
  _SoignantViewState createState() => _SoignantViewState();
}

class _SoignantViewState extends State<SoignantView> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Espace Soignant'),
        ),
        backgroundColor: Colors.green.shade900,
        actions: [
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Ajoutez le code pour accéder au microphone ici
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: [
                // Première page avec 15 boutons
                buildPage1(),
                // Deuxième page avec 10 boutons
                buildPage2(),
              ],
            ),
          ),

          // Boutons pour accéder aux pages
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(0,
                      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                child: Text('Page 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(1,
                      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                },
                child: Text('Page 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPage1() {
    return Container(
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
                    // Action lorsque le bouton INTUBATION est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IntubationView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'INTUBATION',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    // Action lorsque le bouton est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TracheotomieView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'TRACHÉOTOMIE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    // Action lorsque le bouton est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VenArtView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: const Center(
                    child: Text(
                    'VENTILATION\nARTIFICIELLE',
                    style: TextStyle(fontSize: 15),),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    // Action lorsque le bouton est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FibrClsView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'FIBROSCOPIE\nCOLOSCOPIE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Action lorsque le bouton "Hygiène" est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FibrBrchView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'FIBROSCOPIE\nBRONCHIQUE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PonctLombView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'PONCTION\nLOMBAIRE',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
              ],
            ),
            SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EcmoView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'ECMO',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrThracView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'DRAIN\nTHORACIQUE ',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SndUriView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'SONDE\nURINAIRE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EcoCarView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'ÉCHOGRAPHIE\nCARDIAQUE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RadioView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'RADIOLOGIE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PerfView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'PERFUSION',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage2() {
    return Container(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VentilNoInvaView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'VENTILATION\nNON INVASIVE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    // Action lorsque le bouton est pressé
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AOTView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'ASPIRATIONS\nORO-TRACHEALES',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OptiflowView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: const Center(
                    child :Text(
                    'OPTIFLOW OU\nOXYGÉNOTHÉRAPIE\nÀ HAUT\nDÉBIT',
                    style: TextStyle(fontSize: 15),),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrelSangView()),
                    );


                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'PRÉLÈVEMENT\nSANGUIN',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoieVeinView()),
                    );


                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'VOIE VEINEUSE\nCENTRALEOU KTC',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CathAstView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'CATHETER\nARTERIEL',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
              ],
            ),
            SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DialyseView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'DIALYSE',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EcouvNaRectView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'ÉCOUVILLON\nNASAL\nOU RECTAL ',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CapGasView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    ' GLYCÉMIE\nCAPILAIRE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PensEscView()),
                    );

                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'PANSEMENT\nESCARRE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VacThrpView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'VAC thérapie',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SndNasogView()),
                    );
                  },
                  icon: Icon(Icons.medical_services), // Ajout de l'icône
                  label: Text(
                    'SONDE \n NASOGASTRIQUE',
                    style: TextStyle(fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(180, 180),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

