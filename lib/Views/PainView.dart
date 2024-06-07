import 'package:flutter/material.dart';

class PainView extends StatelessWidget {
  PainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const double tablet = 500;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(
          child: Text(
            'DOULEURS',
            style: TextStyle(fontSize: 15),
          ),
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
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.9,
          child: ListView(
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Images pour la question "Avez-vous mal?"
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  child: FittedBox(
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      //direction: (size.width <= tablet) ? Axis.vertical : Axis.horizontal,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('images/Pain/PousseV.png'),
                          radius: 100,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/Pain/Pousse.png'),
                          radius: 100,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('images/Pain/Pinterro.png'),
                          radius: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Bande verte avec la question "Où?"
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Où?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Images pour la question "Où?"
              SizedBox(
                height: (size.width <= tablet) ? size.height * 0.3 : 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('images/Pain/ManDos.png',
                          width: (size.width <= tablet) ? 200 : 500,
                          height: 500),
                      Image.asset('images/Pain/ManFace.jpg',
                          width: (size.width <= tablet) ? 200 : 500,
                          height: 500),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (size.width <= tablet) ? size.height * 0.3 : 200,
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/Pain/ManProfil.jpg',
                            height: 200, width: 300),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Quel type de douleurs?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FittedBox(
                child: Padding(
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
                                  width: 100),
                              Text(
                                'Oppression / Qui serre',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              ImageWidget(
                                  imagePath: 'images/Pain/P3.jpg',
                                  height: 200,
                                  width: 100),
                              Text(
                                'J\'ai des démangeaisons',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // Image ManDoul
                          Image.asset('images/Pain/ManDoul.jpg',
                              height: 200, width: 300),
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Images pour la question "Avez-vous mal?"
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ImageWidget(
                            imagePath: 'images/Pain/D0.jpg',
                            height: 100,
                            width: 100),
                        ImageWidget(
                            imagePath: 'images/Pain/D2.jpg',
                            height: 100,
                            width: 100),
                        ImageWidget(
                            imagePath: 'images/Pain/D4.jpg',
                            height: 100,
                            width: 100),
                        ImageWidget(
                            imagePath: 'images/Pain/D6.jpg',
                            height: 100,
                            width: 100),
                        ImageWidget(
                            imagePath: 'images/Pain/D8.jpg',
                            height: 100,
                            width: 100),
                        ImageWidget(
                            imagePath: 'images/Pain/D10.jpg',
                            height: 100,
                            width: 100),
                      ],
                    ),
                  ),
                ),
              ),

              // ... (ajoutez d'autres éléments au besoin)
            ],
          ),
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
