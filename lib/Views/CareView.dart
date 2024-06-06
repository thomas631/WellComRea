import 'package:flutter/material.dart';

class CareView extends StatelessWidget {
  CareView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Bien-être'),
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
      body: Container(
        color: Colors.green.shade200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'images/Bien/Centre.jpg',
                  width: 170,
                  height: 170,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 150,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B1.png', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux lire ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B7.jpg', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Chargeur',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              right: 205,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B8.png', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Laissez-moi tranquille',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 360,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B2.jpg', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux la musique ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 600,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B3.png', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux mes lunettes ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 230,
              top: 50,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B11.jpg',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux écrire',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 210,
              top: 300,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B12.png',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux dormir',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 180,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B5.jpg', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux la télé',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              left: 205,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Bien/B6.jpg', width: 200, height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Téléphone',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;

  ImageWidget({required this.imagePath, this.width = 50, this.height = 50});

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
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: isPressed
              ? Border.all(color: Colors.red, width: 3)
              : Border.all(color: Colors.transparent, width: 0),
        ),
        child: Image.asset(
          widget.imagePath,
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
