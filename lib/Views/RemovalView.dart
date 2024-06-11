import 'package:flutter/material.dart';

class RemovalView extends StatelessWidget {
  RemovalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(
          child: Text('ELIMINATION'),
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
                  'images/Douche/Centre.jpg',
                  width: 170,
                  height: 170,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 420,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Douche/D1.jpg',
                      width: 200,
                      height: 150),
                  SizedBox(height: 20),
                  Text(
                    'Je veux uriner ',
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
                      imagePath: 'images/Douche/D2.jpg',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Les toilettes ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 400,
              bottom: 70,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Douche/D3.jpg',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Le pistolet ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 400,
              bottom: 70,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Douche/D4.png',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Le bassin ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 180,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Douche/D5.jpg',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'La chaise-pot ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 720,
              child: Column(
                children: [
                  ImageWidget(
                      imagePath: 'images/Douche/D6.png',
                      width: 200,
                      height: 150),
                  SizedBox(height: 10),
                  Text(
                    'Je veux aller à la selle',
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
