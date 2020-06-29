import 'package:flutter/material.dart';
import 'package:planetapp/ui/home.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = new Image.asset(
      "assets/images/galaxyLogo.png",
      height: 300,
    );
    final bttnSignUp = ButtonTheme(
        height: 40,
        minWidth: 290,
        child: new OutlineButton(
          borderSide: BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => HomePage()));
          },
          child: Text('Iniciar', style: TextStyle(color: Colors.white)),
        ));

    final bttnLogin = ButtonTheme(
        height: 40,
        minWidth: 290,
        child: new RaisedButton(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () async {
            const url =
                'https://play.google.com/store/apps/details?id=com.google.ar.core&hl=es_MX';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          color: Colors.white,
          child: Text('Descargar AR Core', style: TextStyle(color: Colors.red)),
        ));

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/fondo.jpg"),
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(31, 136, 170, 0.8), BlendMode.modulate),
                    fit: BoxFit.cover))),
        Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.symmetric(vertical: 30),
            child: logo),
        Container(
          height: 450,
          child: bttnSignUp,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        ),
        SizedBox(height: 24.0),
        Container(
          height: 520,
          child: bttnLogin,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        ),
      ],
    ));
  }
}
