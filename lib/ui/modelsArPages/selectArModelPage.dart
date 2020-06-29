import 'package:flutter/material.dart';
import 'package:planetapp/model/Planet.dart';
import 'package:planetapp/ui/modelsArPages/viewAR.dart';

class SelectArModelPage extends StatefulWidget {
  @override
  _SelectArModelPageState createState() => _SelectArModelPageState();
}

class _SelectArModelPageState extends State<SelectArModelPage> {
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
    Widget _createButton(Planet _currentPlanet) {
      return Padding(
        padding: EdgeInsets.only(top: 8),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(_currentPlanet.vidAssetPath),
                fit: BoxFit.cover),
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewARPage(
                        currentPlanet: _currentPlanet,
                      )));
            },
            child: Center(
              child: Text(
                _currentPlanet.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.05),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text('Realidad aumentada')),
      ),
      body: ListView(
        children: <Widget>[
          _createButton(_planets[0]),
          _createButton(_planets[1]),
          _createButton(_planets[2]),
          _createButton(moon),
          _createButton(_planets[3]),
          _createButton(_planets[4]),
          _createButton(_planets[5]),
          _createButton(_planets[6]),
          _createButton(_planets[7]),
        ],
      ),
    );
  }
}
