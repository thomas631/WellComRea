import 'package:flutter/material.dart';
import 'package:well_com_rea/Controllers/patient_controller.dart';

class FeedView extends StatelessWidget {

  FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('ALIMENTATION'),
        ),
        backgroundColor: Colors.green.shade900,
        actions: [
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Code pour accéder au microphone
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.green.shade200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.asset(
                  'images/Feed/centre.jpg',
                  width: 170,
                  height: 170,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 420,

              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim.png',
                width: 200,
                height: 150,
                labelText: 'J\'ai Soif',
              ),
            ),
            Positioned(
              left: 400,
              bottom: 70,
              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim1.jpg',
                width: 200,
                height: 150,
                labelText: 'Je voudrais du Sucre',

              ),
            ),
            Positioned(
              left: 180,
              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim2.jpg',
                width: 200,
                height: 150,
                labelText: 'Du sel',

              ),
            ),
            Positioned(
              right: 180,
              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim4.jpg',
                width: 200,
                height: 150,
                labelText: 'Du Café',

              ),
            ),
            Positioned(
              right: 400,
              bottom: 70,
              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim5.jpg',
                width: 200,
                height: 150,
                labelText: 'Du Thé',

              ),
            ),
            Positioned(
              top: 50,
              left: 720,
              child: RoundedImageWidget(
                imagePath: 'images/Feed/Alim6.png',
                width: 200,
                height: 150,
                labelText: 'J\'ai faim',

              ),
            ),
          ],
        ),
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
        /*try {
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
