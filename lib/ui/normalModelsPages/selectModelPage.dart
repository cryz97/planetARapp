import 'package:flutter/material.dart';
import 'package:planetapp/ui/normalModelsPages/playModelPage.dart';

class SelectModelPage extends StatefulWidget {
  @override
  _SelectModelPageState createState() => _SelectModelPageState();
}

class _SelectModelPageState extends State<SelectModelPage> {
  @override
  Widget build(BuildContext context) {
    Widget _createTile(String planetName) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 1),
        child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.10,
            child: Container(
              color: Colors.purple.withOpacity(0.5),
              child: ListTile(
                  title: Text(
                    "$planetName",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.05),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PlayModelPage(
                              planet: "$planetName",
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
          _createTile("Mercurio"),
          _createTile("Venus"),
          _createTile("Tierra"),
          _createTile("Luna"),
          _createTile("Marte"),
          _createTile("Jupiter"),
          _createTile("Saturno"),
          _createTile("Urano"),
          _createTile("Neptuno"),
        ],
      ),
    );
  }
}
