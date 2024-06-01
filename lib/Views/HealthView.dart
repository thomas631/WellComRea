import 'package:flutter/material.dart';
import 'package:well_com_rea/Controllers/patient_controller.dart';


class HealthView extends StatelessWidget {


  HealthView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HYGIENE'),
        ),
        backgroundColor: Colors.green.shade800,
      ),
      backgroundColor: Colors.green.shade200,
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                // Première image au centre
                Column(
                  children: [
                    RoundedImageWidget(
                      imagePath: 'images/Health/Centre.png',
                      width: 170,
                      height: 170,
                      labelText: '',
                    ),
                  ],
                ),
                SizedBox(height: 4),
                // Deux images à gauche
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/H1.png',
                          height: 200,
                          width: 150,
                          labelText: 'Prendre une douche',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/H2.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Toilette au lit',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/H3.gif',
                          height: 200,
                          width: 150,
                          labelText: 'Petite Toilette',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/H4.png',
                          height: 200,
                          width: 150,
                          labelText: 'Changer la protection',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Image en bas
                horizontalBar(), //  la barre horizontale
                Column(
                  children: [
                    RoundedImageWidget(
                      imagePath: 'images/Health/CentreI.jpg',
                      width: 170,
                      height: 170,
                      labelText: '',
                    ),
                  ],
                ),
                // Deux images à droite
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/I2.png',
                          height: 200,
                          width: 150,
                          labelText: 'Soins de bouche',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/I3.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Retirer le Dentier',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/I5.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Mettre le dentier',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/I4.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Laver les dents',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/I6.png',
                          height: 200,
                          width: 300,
                          labelText: 'Changer le cordon de la sonde',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Seconde image au centre

                horizontalBar(), //  la barre horizontale
                Column(
                  children: [
                    RoundedImageWidget(
                      imagePath: 'images/Health/CentreS.jpg',
                      width: 170,
                      height: 170,
                      labelText: '',
                    ),
                  ],
                ),
                // Deux images à gauche
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/S1.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Soins des Yeux',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/S2.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Se Raser',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/S3.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Couper les ongles',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: 'images/Health/S4.jpg',
                          height: 200,
                          width: 150,
                          labelText: 'Se Coiffer',
                        ),
                      ],
                    ),
                    SizedBox(width: 10), // Ajout de l'espace
                    Column(
                      children: [
                        ImageWithText(
                          imagePath: r'images/Health/S5.png',
                          height: 200,
                          width: 150,
                          labelText: 'Faire un Shampoing',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  // Fonction pour créer une barre verticale
  Widget horizontalBar() {
    return Container(
      width: double.infinity, // Largeur de la barre
      height: 5, // Hauteur de la barre
      color: Colors.green.shade800, // Couleur de la barre
      margin: EdgeInsets.symmetric(vertical: 10), // Ajout de marge verticale
    );
  }

}



class ImageWithText extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final String labelText;


  ImageWithText({
    required this.imagePath,
    required this.width,
    required this.height,
    required this.labelText,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedImageWidget(
          imagePath: imagePath,
          width: width,
          height: height,
          labelText: labelText,
        ),
      ],
    );
  }
}

class RoundedImageWidget extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  final String labelText;


  RoundedImageWidget({
    required this.imagePath,
    this.width = 50,
    this.height = 50,
    required this.labelText,

  });

  @override
  _RoundedImageWidgetState createState() => _RoundedImageWidgetState();
}

class _RoundedImageWidgetState extends State<RoundedImageWidget> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) async {
        setState(() {
          isPressed = false;
        });

        // Ajouter le texte à la liste avec une virgule
        final need = widget.labelText;

        // Imprimer la liste pour vérification
        print(need);

        // Enregistrez le besoin dans la base de données
        /*try {
          await PatientController.addNeedsToPatient(widget.bedNumber, [need]);
          print('Besoin enregistré avec succès dans la base de données.');
        } catch (error) {
          print('Erreur lors de l\'enregistrement du besoin dans la base de données: $error');
        }*/
      },


      child: Container(
        margin: EdgeInsets.all(8.0), // Ajout de la marge autour de l'image
        decoration: BoxDecoration(
          border: isPressed
              ? Border.all(color: Colors.red, width: 3)
              : Border.all(color: Colors.transparent, width: 0),
        ),
        child: Column(
          children: [
            Image.asset(
              widget.imagePath,
              width: widget.width,
              height: widget.height,
            ),
            SizedBox(height: 10),
            Text(
              widget.labelText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
