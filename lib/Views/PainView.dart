import 'package:flutter/material.dart';

class PainView extends StatelessWidget {


  PainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
        child : Text('DOULEURS'),
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
      backgroundColor: Colors.green.shade200,
      body: ListView(
        children: [
          // Bande verte avec la question "Avez-vous mal?"
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Avez-vous mal?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Images pour la question "Avez-vous mal?"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageWidget(
                    imagePath: 'images/Pain/PousseV.png',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/Pousse.png',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/Pinterro.png',
                    height: 100,
                    width: 100
                ),
              ],
            ),
          ),
          // Bande verte avec la question "Où?"
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Où?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Images pour la question "Où?"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/Pain/ManDos.png', height: 500, width: 500),
                Image.asset('images/Pain/ManFace.jpg', height: 500, width: 500),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/Pain/ManProfil.jpg', height: 200, width: 300),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Quel type de douleurs?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Image en haut de ManDoul
                ImageWidget(
                    imagePath: 'images/Pain/P1.jpg',
                    height: 100,
                    width: 100),
                Text(
                  'J\'ai de piqûres',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                // Image ManDoul au centre
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image à gauche de ManDoul
                    Column(
                      children: [
                        ImageWidget(
                            imagePath: 'images/Pain/P2.png',
                            height: 200,
                            width: 100
                        ),
                        Text(
                          'Oppression / Qui serre',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        ImageWidget(
                            imagePath: 'images/Pain/P3.jpg',
                            height: 200,
                            width: 100
                        ),
                        Text(
                          'J\'ai des démangeaisons',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                    // Image ManDoul
                    Image.asset('images/Pain/ManDoul.jpg', height: 200, width: 300),
                    // Image à droite de ManDoul
                    Column(
                      children: [
                        ImageWidget(
                            imagePath: 'images/Pain/P4.png',
                            height: 200,
                            width: 100),
                        Text(
                          'J\'ai des fourmillements',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        ImageWidget(
                            imagePath: 'images/Pain/P5.jpg',
                            height: 200,
                            width: 100),
                        Text(
                          'J\'ai des brûlures',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ],
                ),
                // Image en bas de ManDoul
                ImageWidget(
                    imagePath: 'images/Pain/P6.png',
                    height: 100,
                    width: 100),
                Text(
                  'Comme des coups de poignard',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'A quelle echelle?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Images pour la question "Avez-vous mal?"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWidget(
                    imagePath: 'images/Pain/D0.jpg',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/D2.jpg',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/D4.jpg',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/D6.jpg',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/D8.jpg',
                    height: 100,
                    width: 100
                ),
                ImageWidget(
                    imagePath: 'images/Pain/D10.jpg',
                    height: 100,
                    width: 100
                ),
              ],
            ),
          ),

          // ... (ajoutez d'autres éléments au besoin)
        ],
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
