import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:well_com_rea/Controllers/patient_controller.dart';

class InstalView extends StatefulWidget {


  InstalView({Key? key}) : super(key: key);

  @override
  _InstalViewState createState() => _InstalViewState();
}

class _InstalViewState extends State<InstalView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/Installation/mise-au-fauteuil.mp4')
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('INSTALLATION/MOBILISATION'),
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
      body: Scrollbar(
        child: ListView(
          children: [
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
                      'Attacher les mains pour votre sécurité',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageWidget(
                    imagePath: 'images/Installation/I1.png',
                    height: 300,
                    width: 200,
                    labelText: 'Attacher les mains',

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
                      'Mise au fauteuil',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I2.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I3.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I4.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I5.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I6.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I7.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I8.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I9.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',
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
                      'Se recoucher',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I10.png',
                    height: 300,
                    width: 300,
                    labelText: '',

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
                      'OREILLER',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I11.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I12.png',
                    height: 300,
                    width: 300,
                    labelText: 'Mise au fauteuil',

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
                      'Premier LEVER',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I13.png',
                    height: 300,
                    width: 300,
                    labelText: '',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I14.png',
                    height: 300,
                    width: 300,
                    labelText: '',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I15.png',
                    height: 300,
                    width: 300,
                    labelText: '',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I16.png',
                    height: 300,
                    width: 300,
                    labelText: '',
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
                      'Premier LEVER',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                  ImageWidget(
                    imagePath: 'images/Installation/I17.png',
                    height: 300,
                    width: 300,
                    labelText: '',

                  ),
                  ImageWidget(
                    imagePath: 'images/Installation/I18.png',
                    height: 300,
                    width: 300,
                    labelText: '',
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
