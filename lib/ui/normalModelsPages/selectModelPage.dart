import 'package:flutter/material.dart';
import 'package:planetapp/model/Planet.dart';
import 'package:planetapp/ui/normalModelsPages/playModelPage.dart';

class SelectModelPage extends StatefulWidget {
  @override
  _SelectModelPageState createState() => _SelectModelPageState();
}

class _SelectModelPageState extends State<SelectModelPage> {
  final List<Planet> _planets = planets;

  final Planet moon = new Planet(
      name: 'Luna',
      distance: 0.5,
      imgAssetPath: 'assets/images/moon.jpg',
      vidAssetPath: 'assets/images/moon.webp',
      vid3DAssetPath: 'assets/videos/Luna3D.mp4',
      textureAssetPath: 'assets/textures/moonTexture.jpg',
      equatorial: 0.25);
  @override
  Widget build(BuildContext context) {
    Widget _createTile(Planet _currentPlanet) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 1),
        child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.11,
            child: Container(
              color: Colors.purple.withOpacity(0.5),
              child: ListTile(
                  leading: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height * 0.05,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${_currentPlanet.name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.05),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PlayModelPage(
                              currentPlanet: _currentPlanet,
                            )));
                  }),
            )),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('Modelos 3D de planetas')),
      ),
      body: ListView(
        children: <Widget>[
          _createTile(_planets[0]),
          _createTile(_planets[1]),
          _createTile(_planets[2]),
          _createTile(moon),
          _createTile(_planets[3]),
          _createTile(_planets[4]),
          _createTile(_planets[5]),
          _createTile(_planets[6]),
          _createTile(_planets[7]),
        ],
      ),
    );
  }
}
