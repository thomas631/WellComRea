import 'package:flutter/material.dart';
import 'package:well_com_rea/Controllers/patient_controller.dart';

class DiscomfortView extends StatelessWidget {
  DiscomfortView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('INCONFORT'),
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
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.green.shade200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 290,
                  left: 530,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/Discomfort/Centre.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 250,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis1.png',
                    width: 200,
                    height: 150,
                    labelText: 'J\’ai Froid',
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 80,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis2.png',
                    width: 200,
                    height: 150,
                    labelText: 'J\’ai chaud',
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 420,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis3.jpg',
                    width: 200,
                    height: 150,
                    labelText: 'J\’ai soif',
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 570,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis3.png',
                    width: 200,
                    height: 150,
                    labelText: 'Trop de bruit',
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 570,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis13.jpg',
                    width: 200,
                    height: 150,
                    labelText: 'Je suis fatigué',
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 720,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis4.png',
                    width: 200,
                    height: 150,
                    labelText: 'Trop de lumière',
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 720,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis10.png',
                    width: 200,
                    height: 150,
                    labelText: 'Je suis Triste',
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 920,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis13.png',
                    width: 200,
                    height: 150,
                    labelText: 'J\'ai fait un cauchemar',
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 920,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis14.jpg',
                    width: 200,
                    height: 150,
                    labelText: 'J\'ai une insomnie',
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 920,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis12.png',
                    width: 200,
                    height: 150,
                    labelText: 'Je Stress',
                  ),
                ),
                Positioned(
                  left: 920,
                  top: 610,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis9.png',
                    width: 200,
                    height: 150,
                    labelText: 'Je ne veux pas\nNON',
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 250,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis8.jpg',
                    width: 200,
                    height: 150,
                    labelText: 'J\'étouffe',
                  ),
                ),
                Positioned(
                  right: 180,
                  bottom: -200,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis9.png',
                    width: 200,
                    height: 150,
                    labelText: 'Je ne veux pas',
                  ),
                ),
                Positioned(
                  left: 80,
                  top: 610,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis5.png',
                    width: 200,
                    height: 150,
                    labelText: 'Je me sens opressé',
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 80,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis6.jpg',
                    width: 200,
                    height: 150,
                    labelText: 'Nausée',
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 80,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis7.png',
                    width: 200,
                    height: 150,
                    labelText: 'Tête qui tourne',
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 420,
                  child: RoundedImageWidget(
                    imagePath: 'images/Discomfort/Dis8.png',
                    width: 200,
                    height: 150,
                    labelText: 'Colère',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedImageWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ImageWidget(
        imagePath: imagePath,
        width: width,
        height: height,
        labelText: labelText,
      ),
    );
  }
}

class ImageWidget extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  final String labelText;

  ImageWidget({
    required this.imagePath,
    this.width = 50,
    this.height = 50,
    required this.labelText,
  });

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
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
        /* try {
          await PatientController.addNeedsToPatient(widget.bedNumber, [need]);
          print('Besoin enregistré avec succès dans la base de données.');
        } catch (error) {
          print('Erreur lors de l\'enregistrement du besoin dans la base de données: $error');
        }*/
      },
      child: Container(
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
